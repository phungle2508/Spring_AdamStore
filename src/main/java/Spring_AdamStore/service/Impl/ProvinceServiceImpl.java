package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProvinceResponse;
import Spring_AdamStore.dto.response.ReviewResponse;
import Spring_AdamStore.entity.Province;
import Spring_AdamStore.entity.Review;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.ProvinceMapper;
import Spring_AdamStore.repository.ProvinceRepository;
import Spring_AdamStore.service.PageableService;
import Spring_AdamStore.service.ProvinceService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@Slf4j(topic = "PROVINCE-SERVICE")
@RequiredArgsConstructor
public class ProvinceServiceImpl implements ProvinceService {

    private final ProvinceRepository provinceRepository;
    private final ProvinceMapper provinceMapper;
    private final PageableService pageableService;

    @Override
    public ProvinceResponse fetchById(Long id) {
        Province province = findProvinceById(id);

        return provinceMapper.toProvinceResponse(province);
    }

    @Override
    public PageResponse<ProvinceResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<Province> provincePage = provinceRepository.findAll(pageable);

        return PageResponse.<ProvinceResponse>builder()
                .page(provincePage.getNumber() + 1)
                .size(provincePage.getSize())
                .totalPages(provincePage.getTotalPages())
                .totalItems(provincePage.getTotalElements())
                .items(provinceMapper.toProvinceResponseList(provincePage.getContent()))
                .build();
    }

    private Province findProvinceById(Long id) {
        return provinceRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.PROVINCE_NOT_EXISTED));
    }
}
