package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.request.ProvinceRequest;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProvinceResponse;
import Spring_AdamStore.entity.Province;
import Spring_AdamStore.entity.User;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.ProvinceMapper;
import Spring_AdamStore.repository.ProvinceRepository;
import Spring_AdamStore.service.ProvinceService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j(topic = "PROVINCE-SERVICE")
@RequiredArgsConstructor
public class ProvinceServiceImpl implements ProvinceService {

    private final ProvinceRepository provinceRepository;
    private final ProvinceMapper provinceMapper;

    @Override
    public ProvinceResponse fetchProvinceById(Long id) {
        Province province = findActiveProvinceById(id);

        return provinceMapper.toProvinceResponse(province);
    }

    @Override
    public PageResponse<ProvinceResponse> fetchAllProvinces(int pageNo, int pageSize, String sortBy) {
        return null;
    }

    private Province findActiveProvinceById(Long id) {
        return provinceRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.PROVINCE_NOT_EXISTED));
    }
}
