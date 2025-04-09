package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.response.OrderResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.entity.Order;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.OrderMapper;
import Spring_AdamStore.repository.OrderRepository;
import Spring_AdamStore.service.OrderService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j(topic = "ORDER-SERVICE")
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {

    private final OrderRepository orderRepository;
    private final OrderMapper orderMapper;

    @Override
    public OrderResponse create(OrderRequest request) {
        Order order = orderMapper.toOrder(request);

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
    public OrderResponse update(Long id, OrderRequest request) {
        Order order = findOrderById(id);

        orderMapper.update(order, request);

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
}
