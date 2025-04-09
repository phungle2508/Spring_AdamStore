package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.CategoryRequest;
import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.CategoryResponse;
import Spring_AdamStore.dto.response.PageResponse;

public interface CategoryService {

    CategoryResponse create(CategoryRequest request);

    CategoryResponse fetchById(Long id);

    PageResponse<CategoryResponse> fetchAll(int pageNo, int pageSize, String sortBy);

    CategoryResponse update(Long id, CategoryRequest request);

    void delete(Long id);
}
