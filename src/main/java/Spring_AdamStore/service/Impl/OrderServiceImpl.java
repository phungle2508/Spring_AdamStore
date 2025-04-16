package Spring_AdamStore.service.Impl;

import Spring_AdamStore.constants.OrderStatus;
import Spring_AdamStore.constants.PaymentStatus;
import Spring_AdamStore.dto.request.OrderItemRequest;
import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.request.ShippingFeeRequest;
import Spring_AdamStore.dto.request.UpdateOrderAddressRequest;
import Spring_AdamStore.dto.response.GhnResponse;
import Spring_AdamStore.dto.response.OrderResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ShippingFeeResponse;
import Spring_AdamStore.entity.*;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.OrderMapper;
import Spring_AdamStore.repository.*;
import Spring_AdamStore.service.CurrentUserService;
import Spring_AdamStore.service.OrderService;
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
    private final RestTemplate restTemplate;
    private final CurrentUserService currentUserService;
    private final UserRepository userRepository;
    private final AddressRepository addressRepository;
    private final ProductVariantRepository productVariantRepository;
    private final OrderItemRepository orderItemRepository;
    private final PromotionRepository promotionRepository;
    private final PaymentHistoryRepository paymentHistoryRepository;

    @Value("${ghn.token}")
    private String ghnToken;

    @Value("${ghn.shop-id}")
    private String shopId;

    @Value("${ghn.fee-url}")
    private String feeUrl;

    @Value("${shipping.from_district_id}")
    private Integer fromDistrictId;

    @Value("${shipping.service_type_id}")
    private Integer serviceTypeId;

    @Value("${shipping.weight}")
    private Integer weight;

    @Value("${shipping.length}")
    private Integer length;

    @Value("${shipping.width}")
    private Integer width;

    @Value("${shipping.height}")
    private Integer height;

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
                .paymentMethod(request.getPaymentMethod())
                .totalAmount(order.getTotalPrice())
                .paymentStatus(PaymentStatus.PENDING)
                .paymentTime(LocalDateTime.now())
                .order(order)
                .build());

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
    public ShippingFeeResponse shippingCost(Double totalPrice, String toWardCode, Integer toDistrictId){
        int insuranceValue = (int) Math.round(totalPrice);

        ShippingFeeRequest request = ShippingFeeRequest.builder()
                .insuranceValue(insuranceValue)
                .toWardCode(toWardCode)
                .toDistrictId(toDistrictId)
                .coupon(null)
                .fromDistrictId(fromDistrictId)
                .weight(weight)
                .length(length)
                .width(width)
                .height(height)
                .serviceTypeId(serviceTypeId)
                .build();

        return calculateShippingFee(request);
    }


    public ShippingFeeResponse calculateShippingFee(ShippingFeeRequest request) {
        // Set header token and shop_id
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", ghnToken);
        headers.set("shop_id", shopId);

        // Create body
        Map<String, Object> body = new HashMap<>();
        body.put("service_type_id", request.getServiceTypeId());
        body.put("insurance_value", request.getInsuranceValue());
        body.put("coupon", request.getCoupon());
        body.put("to_ward_code", request.getToWardCode());
        body.put("to_district_id", request.getToDistrictId());
        body.put("from_district_id", request.getFromDistrictId());
        body.put("weight", request.getWeight());
        body.put("length", request.getLength());
        body.put("width", request.getWidth());
        body.put("height", request.getHeight());

        // HttpEntity voi body va headers
        HttpEntity<Map<String, Object>> requestEntity = new HttpEntity<>(body, headers);

        try {
            // Call Api
            ResponseEntity<GhnResponse> response = restTemplate.exchange(
                    feeUrl,
                    HttpMethod.POST,
                    requestEntity,
                    GhnResponse.class
            );

            // Kiểm tra phản hồi từ API
            if (response.getStatusCode() == HttpStatus.OK && response.getBody() != null) {
                GhnResponse ghnResponse = response.getBody();

                if (ghnResponse.getCode() == 200) {
                    return ghnResponse.getData();
                } else {
                    throw new RuntimeException("GHN API trả về lỗi: " + ghnResponse.getMessage());
                }
            } else {
                throw new RuntimeException("Lỗi khi gọi API GHN, mã lỗi: " + response.getStatusCode());
            }

        } catch (Exception e) {
            throw new RuntimeException("Lỗi khi tính phí vận chuyển: " + e.getMessage(), e);
        }
    }


}
