package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.request.ColorRequest;
import Spring_AdamStore.dto.response.ColorResponse;
import Spring_AdamStore.entity.Color;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ColorMapper {

    Color toColor(ColorRequest request);

    ColorResponse toColorResponse(Color color);

    void update(@MappingTarget Color color, ColorRequest request);

    List<ColorResponse> toColorResponseList(List<Color> colorList);


}
