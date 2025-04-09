
package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.response.OrderResponse;
import Spring_AdamStore.entity.Order;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface OrderMapper {

    Order toOrder(OrderRequest request);

    OrderResponse toOrderResponse(Order order);

    void update(@MappingTarget Order order,OrderRequest request);

    List<OrderResponse> toOrderResponseList(List<Order> orderList);

}
