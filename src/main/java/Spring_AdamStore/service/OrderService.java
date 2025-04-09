package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.OrderItemRequest;
import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.response.OrderItemResponse;
import Spring_AdamStore.dto.response.OrderResponse;
import Spring_AdamStore.dto.response.PageResponse;

public interface OrderService {

    OrderResponse create(OrderRequest request);

    OrderResponse fetchById(Long id);

    PageResponse<OrderResponse> fetchAll(int pageNo, int pageSize, String sortBy);

    OrderResponse update(Long id, OrderRequest request);

    void delete(Long id);

}
