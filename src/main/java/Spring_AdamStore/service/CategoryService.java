package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.CategoryRequest;
import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.CategoryResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProductResponse;

public interface CategoryService {

    CategoryResponse create(CategoryRequest request);

    CategoryResponse fetchById(Long id);

    PageResponse<CategoryResponse> fetchAll(int pageNo, int pageSize, String sortBy);

    CategoryResponse update(Long id, CategoryRequest request);

    void delete(Long id);

    PageResponse<ProductResponse> fetchByCategoryId(int pageNo, int pageSize, String sortBy, Long categoryId);
}
