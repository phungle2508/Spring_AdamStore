package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.ProvinceRequest;
import Spring_AdamStore.dto.response.ProvinceResponse;
import Spring_AdamStore.entity.Province;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ProvinceMapper {

    Province toProvince(ProvinceRequest request);

    ProvinceResponse toProvinceResponse(Province province);

    void updateProvince(@MappingTarget Province province, ProvinceRequest request);
}
