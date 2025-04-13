package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.request.ProductUpdateRequest;
import Spring_AdamStore.dto.response.ProductResponse;
import Spring_AdamStore.entity.Product;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS, uses = {ProductVariantMapper.class})
public interface ProductMapper {

    Product toProduct(ProductRequest request);

    @Mapping(target = "sizes", source = "productVariants", qualifiedByName = "toSizeSet")
    @Mapping(target = "colors", source = "productVariants", qualifiedByName = "toColorSet")
    @Mapping(target = "price", source = "productVariants", qualifiedByName = "getPriceFromVariant")
    ProductResponse toProductResponse(Product product);

    void updateProduct(@MappingTarget Product product, ProductUpdateRequest request);

    List<ProductResponse> toProductResponseList(List<Product> products);
}
