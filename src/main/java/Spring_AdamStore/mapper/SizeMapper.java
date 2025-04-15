package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.request.ColorRequest;
import Spring_AdamStore.dto.request.SizeRequest;
import Spring_AdamStore.dto.response.ColorResponse;
import Spring_AdamStore.dto.response.SizeResponse;
import Spring_AdamStore.entity.Color;
import Spring_AdamStore.entity.Size;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface SizeMapper {

    Size toSize(SizeRequest request);

    SizeResponse toSizeResponse(Size size);

    void update(@MappingTarget Size size, SizeRequest request);

    List<SizeResponse> toSizeResponseList(List<Size> sizeList);


    @Mapping(target = "id", source = "id")
    @Mapping(target = "name", source = "name")
    EntityBasic toEntityBasic(Size size);
}
