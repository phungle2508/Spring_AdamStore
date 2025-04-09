package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.request.OrderItemRequest;
import Spring_AdamStore.dto.response.OrderItemResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.UserResponse;
import Spring_AdamStore.entity.OrderItem;
import Spring_AdamStore.entity.User;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.OrderItemMapper;
import Spring_AdamStore.repository.OrderItemRepository;
import Spring_AdamStore.service.OrderItemService;
import Spring_AdamStore.service.PageableService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


@Service
@Slf4j(topic = "ORDER-ITEM-SERVICE")
@RequiredArgsConstructor
public class OrderItemServiceImpl implements OrderItemService {

    private final OrderItemRepository orderItemRepository;
    private final OrderItemMapper orderItemMapper;
    private final PageableService pageableService;

    @Override
    public OrderItemResponse create(OrderItemRequest request) {
        OrderItem orderItem = orderItemMapper.toOrderItem(request);

        return orderItemMapper.toOrderItemResponse(orderItemRepository.save(orderItem));
    }

    @Override
    public OrderItemResponse fetchById(Long id) {
        OrderItem orderItem = findOrderItemById(id);

        return orderItemMapper.toOrderItemResponse(orderItem);
    }

    @Override
    public PageResponse<OrderItemResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<OrderItem> orderItemPage = orderItemRepository.findAll(pageable);

        return PageResponse.<OrderItemResponse>builder()
                .page(orderItemPage.getNumber() + 1)
                .size(orderItemPage.getSize())
                .totalPages(orderItemPage.getTotalPages())
                .totalItems(orderItemPage.getTotalElements())
                .items(orderItemMapper.toOrderItemResponseList(orderItemPage.getContent()))
                .build();
    }

    @Override
    public OrderItemResponse update(Long id, OrderItemRequest request) {
        OrderItem orderItem = findOrderItemById(id);

        orderItemMapper.update(orderItem, request);

        return orderItemMapper.toOrderItemResponse(orderItemRepository.save(orderItem));
    }

    @Transactional
    @Override
    public void delete(Long id) {
        OrderItem orderItem = findOrderItemById(id);

        orderItemRepository.delete(orderItem);
    }

    private OrderItem findOrderItemById(Long id) {
        return orderItemRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.ORDER_ITEM_NOT_EXISTED));
    }
}
