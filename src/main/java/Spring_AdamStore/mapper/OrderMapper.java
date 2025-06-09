
package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.response.OrderResponse;
import Spring_AdamStore.entity.Order;
import org.mapstruct.*;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface OrderMapper {

    @Mapping(target = "address", expression = "java(context.getAddressResponse(order.getAddressId()))")
    @Mapping(target = "customerName", expression = "java(context.getUserName(order.getUserId()))")
    @Mapping(target = "orderItems", expression = "java(context.getListOrderItemResponse(order.getId()))")
    OrderResponse toOrderResponse(Order order, @Context OrderMappingHelper context);

    List<OrderResponse> toOrderResponseList(List<Order> orderList, @Context OrderMappingHelper context);

}
