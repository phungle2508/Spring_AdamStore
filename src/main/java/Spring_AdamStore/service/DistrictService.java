package Spring_AdamStore.service;

import Spring_AdamStore.dto.response.DistrictResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProvinceResponse;

public interface DistrictService {

    DistrictResponse fetchById(Long id);

    PageResponse<DistrictResponse> fetchAll(int pageNo, int pageSize, String sortBy);

    PageResponse<DistrictResponse> fetchByProvinceId(Long provinceId, int pageNo, int pageSize, String sortBy);
}
