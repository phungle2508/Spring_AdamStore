package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.response.DistrictResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProvinceResponse;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.DistrictMapper;
import Spring_AdamStore.repository.DistrictRepository;
import Spring_AdamStore.service.DistrictService;
import Spring_AdamStore.service.PageableService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@Slf4j(topic = "DISTRICT-SERVICE")
@RequiredArgsConstructor
public class DistrictServiceImpl implements DistrictService {

    private final DistrictMapper districtMapper;
    private final DistrictRepository districtRepository;
    private final PageableService pageableService;

    @Override
    public DistrictResponse fetchById(Long id) {
        District district = findDistrictById(id);

        return districtMapper.toDistrictResponse(district);
    }

    @Override
    public PageResponse<DistrictResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<District> districtPage = districtRepository.findAll(pageable);

        return PageResponse.<DistrictResponse>builder()
                .page(districtPage.getNumber() + 1)
                .size(districtPage.getSize())
                .totalPages(districtPage.getTotalPages())
                .totalItems(districtPage.getTotalElements())
                .items(districtMapper.toDistrictResponseList(districtPage.getContent()))
                .build();
    }

    @Override
    public PageResponse<DistrictResponse> fetchByProvinceId(Long provinceId, int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<District> districtPage = districtRepository.findByProvinceId(provinceId, pageable);

        return PageResponse.<DistrictResponse>builder()
                .page(districtPage.getNumber() + 1)
                .size(districtPage.getSize())
                .totalPages(districtPage.getTotalPages())
                .totalItems(districtPage.getTotalElements())
                .items(districtMapper.toDistrictResponseList(districtPage.getContent()))
                .build();
    }


    private District findDistrictById(Long id) {
        return districtRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.DISTRICT_NOT_EXISTED));
    }
}
