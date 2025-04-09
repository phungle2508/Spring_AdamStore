package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.response.ProvinceResponse;
import Spring_AdamStore.entity.Province;
import org.mapstruct.Mapper;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ProvinceMapper {

    ProvinceResponse toProvinceResponse(Province province);

    List<ProvinceResponse> toProvinceResponseList(List<Province> provinceList);

}
