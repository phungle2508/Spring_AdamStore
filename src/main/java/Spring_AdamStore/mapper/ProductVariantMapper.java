package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.basic.ProductVariantBasic;
import Spring_AdamStore.dto.request.ColorRequest;
import Spring_AdamStore.dto.response.ColorResponse;
import Spring_AdamStore.entity.Color;
import Spring_AdamStore.entity.ProductImage;
import Spring_AdamStore.entity.ProductVariant;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ProductVariantMapper {


    @Mapping(target = "id", source = "productVariant.id")
    @Mapping(target = "color", source = "productVariant.color.name")
    @Mapping(target = "size", source = "productVariant.size.name")
    @Mapping(target = "product", source = "productVariant.product.name")
    @Mapping(target = "imageUrl", expression = "java(getDefaultImageUrl(productVariant))")
    ProductVariantBasic toProductVariantBasic(ProductVariant productVariant);

    default String getDefaultImageUrl(ProductVariant productVariant) {
        if (productVariant.getProduct() == null || productVariant.getProduct().getProductImages() == null) {
            return null;
        }
        return productVariant.getProduct().getProductImages().stream()
                .filter(ProductImage::getIsDefault)
                .findFirst()
                .map(ProductImage::getImageUrl)
                .orElse(null);
    }



}
