
package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.PromotionRequest;
import Spring_AdamStore.dto.request.PromotionUpdateRequest;
import Spring_AdamStore.dto.response.PromotionResponse;
import Spring_AdamStore.entity.Promotion;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface PromotionMapper {

    Promotion toPromotion(PromotionRequest request);

    PromotionResponse toPromotionResponse(Promotion promotion);

    void update(@MappingTarget Promotion promotion, PromotionUpdateRequest request);

    List<PromotionResponse> toPromotionResponseList(List<Promotion> promotionList);

}
