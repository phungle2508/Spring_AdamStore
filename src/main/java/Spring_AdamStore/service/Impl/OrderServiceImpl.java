package Spring_AdamStore.service.Impl;

import Spring_AdamStore.config.VNPAYConfig;
import Spring_AdamStore.constants.OrderStatus;
import Spring_AdamStore.constants.PaymentMethod;
import Spring_AdamStore.constants.PaymentStatus;
import Spring_AdamStore.dto.request.*;
import Spring_AdamStore.dto.response.*;
import Spring_AdamStore.entity.*;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.OrderMapper;
import Spring_AdamStore.repository.*;
import Spring_AdamStore.service.CurrentUserService;
import Spring_AdamStore.service.OrderService;
import Spring_AdamStore.util.VNPayUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import static Spring_AdamStore.constants.OrderStatus.PENDING;

@Service
@Slf4j(topic = "ORDER-SERVICE")
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {

    private final OrderRepository orderRepository;
    private final OrderMapper orderMapper;

    private final CurrentUserService currentUserService;
    private final UserRepository userRepository;
    private final AddressRepository addressRepository;
    private final ProductVariantRepository productVariantRepository;
    private final OrderItemRepository orderItemRepository;
    private final PromotionRepository promotionRepository;
    private final PaymentHistoryRepository paymentHistoryRepository;
    private final VNPAYConfig vnPayConfig;


    @Override
    @Transactional
    public OrderResponse create(OrderRequest request) {
        // user
        User user = userRepository.findByEmail(currentUserService.getCurrentUsername())
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        // address
        Address address = addressRepository.findById(request.getAddressId())
                .orElseThrow(() -> new AppException(ErrorCode.ADDRESS_NOT_EXISTED));

        Order order = Order.builder()
                .user(user)
                .address(address)
                .orderStatus(PENDING)
                .orderDate(LocalDate.now())
                .build();

        orderRepository.save(order);

        // orderItem
        Set<OrderItem> orderItemSet = new HashSet<>();
        double totalPrice = request.getShippingFee();
        for(OrderItemRequest orderItemRequest : request.getOrderItems()){
            ProductVariant productVariant = productVariantRepository.findById(orderItemRequest.getProductVariantId())
                    .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

            // check sl hang con
            if (productVariant.getQuantity() < orderItemRequest.getQuantity()) {
                throw new AppException(ErrorCode.OUT_OF_STOCK);
            }

            OrderItem orderItem = OrderItem.builder()
                    .quantity(orderItemRequest.getQuantity())
                    .unitPrice(productVariant.getPrice())
                    .order(order)
                    .productVariant(productVariant)
                    .build();

            // tru so luong hang trong kho
            productVariant.setQuantity(productVariant.getQuantity() - orderItemRequest.getQuantity());
            productVariantRepository.save(productVariant);

            orderItemSet.add(orderItem);
            totalPrice += orderItem.getQuantity() * orderItem.getUnitPrice();
        }

        orderItemRepository.saveAll(orderItemSet);
        order.setOrderItems(orderItemSet);

        // Promotion
        if(request.getPromotionId() != null){
            Promotion promotion =  promotionRepository.findById(request.getPromotionId())
                    .orElseThrow(() -> new AppException(ErrorCode.PROMOTION_NOT_EXISTED));

            if (promotion.getStartDate().isAfter(LocalDate.now()) || promotion.getEndDate().isBefore(LocalDate.now())) {
                throw new AppException(ErrorCode.PROMOTION_EXPIRED);
            }

            double discount = totalPrice * (promotion.getDiscountPercent() / 100.0);
            totalPrice -= discount;
            order.setPromotion(promotion);
        }

        order.setTotalPrice(totalPrice);

        paymentHistoryRepository.save(PaymentHistory.builder()
                .isPrimary(false)
                .paymentMethod(request.getPaymentMethod())
                .totalAmount(order.getTotalPrice())
                .paymentStatus(PaymentStatus.PENDING)
                .paymentTime(LocalDateTime.now())
                .order(order)
                .build());

        if (request.getPaymentMethod() == PaymentMethod.CASH) {
            order.setOrderStatus(OrderStatus.PROCESSING);
        }

        return orderMapper.toOrderResponse(orderRepository.save(order));
    }

    @Override
    public OrderResponse fetchById(Long id) {
        Order order = findOrderById(id);

        return orderMapper.toOrderResponse(order);
    }

    @Override
    public PageResponse<OrderResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        return null;
    }

    @Override
    public OrderResponse updateAddress(Long id, UpdateOrderAddressRequest request) {
        Order order = findOrderById(id);

        String currentUserEmail = currentUserService.getCurrentUsername();

        if (!order.getUser().getEmail().equals(currentUserEmail)) {
            throw new AppException(ErrorCode.ORDER_NOT_BELONG_TO_USER);
        }

        if (!(order.getOrderStatus() == OrderStatus.PENDING || order.getOrderStatus() == OrderStatus.PROCESSING)) {
            throw new AppException(ErrorCode.ORDER_CANNOT_UPDATE_ADDRESS);
        }

        Address newAddress = addressRepository.findById(request.getAddressId())
                .orElseThrow(() -> new AppException(ErrorCode.ADDRESS_NOT_EXISTED));

        if (!newAddress.getUser().getEmail().equals(currentUserEmail)) {
            throw new AppException(ErrorCode.ADDRESS_NOT_BELONG_TO_USER);
        }

        order.setAddress(newAddress);
        return orderMapper.toOrderResponse(orderRepository.save(order));
    }

    @Transactional
    @Override
    public void delete(Long id) {
        Order order = findOrderById(id);

        orderRepository.delete(order);
    }

    private Order findOrderById(Long id) {
        return orderRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.ORDER_NOT_EXISTED));
    }


    @Override
    public VNPayResponse processPayment(Long orderId, HttpServletRequest request) {
        Order order = findOrderById(orderId);

        if (!order.getOrderStatus().equals(OrderStatus.PENDING)) {
            throw new AppException(ErrorCode.INVALID_ORDER_STATUS);
        }

        return VNPayResponse.builder()
                .code("OK")
                .message("Mã thanh toán đã được tạo thành công. Bạn sẽ được chuyển đến cổng thanh toán để hoàn tất giao dịch.")
                .paymentUrl(createVnPayPayment(order, request))
                .build();
    }

    public String createVnPayPayment(Order order, HttpServletRequest request) {
        Map<String, String> vnpParamsMap = vnPayConfig.getVNPayConfig();

        long amount = (long) (100 * order.getTotalPrice());

        vnpParamsMap.put("vnp_Amount", String.valueOf(amount));

        vnpParamsMap.put("vnp_IpAddr", VNPayUtil.getIpAddress(request));

        // Tao chuoi da ma hoa
        String queryUrl = VNPayUtil.getPaymentURL(vnpParamsMap, true);

        // Tao chuoi chua ma hoa
        String hashData = VNPayUtil.getPaymentURL(vnpParamsMap, false);
        // Thêm vnp_SecureHash vào URL
        String vnpSecureHash = VNPayUtil.hmacSHA512(vnPayConfig.getSecretKey(), hashData);

        queryUrl += "&vnp_SecureHash=" + vnpSecureHash;

        // Tao URL Final
        return vnPayConfig.getVnp_PayUrl() + "?" + queryUrl;
    }

    @Override
    public OrderResponse updateOrderAfterPayment(PaymentCallbackRequest request) {
        Order order = findOrderById(request.getOrderId());
        order.setOrderStatus(OrderStatus.PROCESSING);

        PaymentHistory  paymentHistory = paymentHistoryRepository.findByOrderIdAndPaymentStatus(order.getId(), PaymentStatus.PENDING)
                .orElseThrow(() -> new AppException(ErrorCode.PAYMENT_HISTORY_NOT_EXISTED));
        paymentHistory.setIsPrimary(true);
        paymentHistory.setPaymentStatus(PaymentStatus.PAID);
        paymentHistory.setPaymentTime(LocalDateTime.now());
        paymentHistoryRepository.save(paymentHistory);

        return orderMapper.toOrderResponse(orderRepository.save(order));
    }

    public void handleFailedPayment(PaymentCallbackRequest request){
        Order order = findOrderById(request.getOrderId());
        PaymentHistory  paymentHistory = paymentHistoryRepository.findByOrderIdAndPaymentStatus(order.getId(), PaymentStatus.PENDING)
                .orElseThrow(() -> new AppException(ErrorCode.PAYMENT_HISTORY_NOT_EXISTED));

        paymentHistory.setPaymentStatus(PaymentStatus.FAILED);
        paymentHistoryRepository.save(paymentHistory);

    }

    @Override
    public VNPayResponse retryPayment(Long orderId, HttpServletRequest request) {
        Order order = findOrderById(orderId);

        if (!order.getOrderStatus().equals(OrderStatus.PENDING)) {
            throw new AppException(ErrorCode.INVALID_ORDER_STATUS);
        }

        String paymentUrl = createVnPayPayment(order, request);

        paymentHistoryRepository.save(PaymentHistory.builder()
                .isPrimary(false)
                .paymentMethod(PaymentMethod.VNPAY)
                .totalAmount(order.getTotalPrice())
                .paymentStatus(PaymentStatus.PENDING)
                .paymentTime(LocalDateTime.now())
                .order(order)
                .build());

        return VNPayResponse.builder()
                .code("OK")
                .message("Mã thanh toán đã được tạo thành công. Bạn sẽ được chuyển đến cổng thanh toán để hoàn tất giao dịch.")
                .paymentUrl(paymentUrl)
                .build();
    }

}
