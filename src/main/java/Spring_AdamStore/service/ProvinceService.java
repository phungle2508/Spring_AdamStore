package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.ProvinceRequest;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProvinceResponse;

public interface ProvinceService {


    ProvinceResponse fetchProvinceById(Long id);

    PageResponse<ProvinceResponse> fetchAllProvinces(int pageNo, int pageSize, String sortBy);

}
