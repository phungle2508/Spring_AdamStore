package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProductResponse;

public interface ProductService {

    ProductResponse create(ProductRequest request);

    ProductResponse fetchProductById(Long id);

    PageResponse<ProductResponse> fetchAllProducts(int pageNo, int pageSize, String sortBy);

    ProductResponse update(Long id, ProductRequest request);

    void delete(Long id);
}
