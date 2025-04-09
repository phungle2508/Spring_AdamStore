package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.BranchRequest;
import Spring_AdamStore.dto.request.CategoryRequest;
import Spring_AdamStore.dto.response.BranchResponse;
import Spring_AdamStore.dto.response.CategoryResponse;
import Spring_AdamStore.dto.response.PageResponse;

public interface BranchService {

    BranchResponse create(BranchRequest request);

    BranchResponse fetchById(Long id);

    PageResponse<BranchResponse> fetchAll(int pageNo, int pageSize, String sortBy);

    BranchResponse update(Long id, BranchRequest request);

    void delete(Long id);
}
