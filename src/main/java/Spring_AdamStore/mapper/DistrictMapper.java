package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.response.DistrictResponse;
import Spring_AdamStore.dto.response.ProvinceResponse;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import org.mapstruct.Mapper;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface DistrictMapper {

    DistrictResponse toDistrictResponse(District district);

    List<DistrictResponse> toDistrictResponseList(List<District> districtList);

}
