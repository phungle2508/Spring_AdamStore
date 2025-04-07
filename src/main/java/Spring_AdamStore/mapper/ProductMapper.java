package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.ProductResponse;
import Spring_AdamStore.dto.response.UserResponse;
import Spring_AdamStore.entity.Product;
import Spring_AdamStore.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ProductMapper {

    Product toProduct(ProductRequest request);

    ProductResponse toProductResponse(Product product);

    void updateProduct(@MappingTarget Product product, ProductRequest request);

    List<ProductResponse> toProductResponseList(List<Product> products);
}
