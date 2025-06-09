package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.request.UpdateOrderAddressRequest;
import Spring_AdamStore.dto.response.OrderResponse;
import Spring_AdamStore.dto.response.PageResponse;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface OrderService {

    OrderResponse create(OrderRequest request);

    OrderResponse fetchById(Long id);

    PageResponse<OrderResponse> fetchAll(Pageable pageable);

    OrderResponse updateAddress(Long id, UpdateOrderAddressRequest request);

    void delete(Long id);

    PageResponse<OrderResponse> searchOrder(int pageNo, int pageSize, String sortBy, List<String> search);
}
