package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.response.CartItemResponse;
import Spring_AdamStore.entity.sql.CartItem;
import org.mapstruct.*;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface CartItemMapper {

    @Mapping(target = "productVariantBasic", expression = "java(context.getProductVariantBasic(cartItem.getProductVariantId()))")
    CartItemResponse toCartItemResponse(CartItem cartItem, @Context CartItemMappingHelper context);

    List<CartItemResponse> toCartItemResponseList(List<CartItem> cartItemList, @Context CartItemMappingHelper context);

}
