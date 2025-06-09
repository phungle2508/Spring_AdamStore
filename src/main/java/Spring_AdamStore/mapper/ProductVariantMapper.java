package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.basic.ProductVariantBasic;
import Spring_AdamStore.dto.response.ProductVariantResponse;
import Spring_AdamStore.entity.ProductVariant;
import org.mapstruct.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ProductVariantMapper {

    ProductVariantResponse toProductVariantResponse(ProductVariant productVariant);

    List<ProductVariantResponse> toProductVariantResponseList(List<ProductVariant> productVariantList);


    ProductVariantBasic toProductVariantBasic(ProductVariant productVariant);

    @Named("getPriceFromVariant")
    default Double getPriceFromFirstVariant(Set<ProductVariant> variants) {
        return variants.stream()
                .findFirst()
                .map(ProductVariant::getPrice)
                .orElse(0.0);
    }

    @Named("getQuantityFromVariant")
    default Integer getQuantityFromFirstVariant(Set<ProductVariant> variants) {
        return variants.stream()
                .findFirst()
                .map(ProductVariant::getQuantity)
                .orElse(0);
    }



}
