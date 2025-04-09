package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.OrderItemRequest;
import Spring_AdamStore.dto.response.OrderItemResponse;
import Spring_AdamStore.dto.response.PageResponse;

public interface OrderItemService {

    OrderItemResponse create(OrderItemRequest request);

    OrderItemResponse fetchById(Long id);

    PageResponse<OrderItemResponse> fetchAll(int pageNo, int pageSize, String sortBy);

    OrderItemResponse update(Long id, OrderItemRequest request);

    void delete(Long id);

}
