package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.OrderItemRequest;
import Spring_AdamStore.dto.response.OrderItemResponse;
import Spring_AdamStore.entity.Category;
import Spring_AdamStore.entity.OrderItem;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface OrderItemMapper {

    OrderItem toOrderItem(OrderItemRequest request);

    OrderItemResponse toOrderItemResponse(OrderItem orderItem);

    void update(@MappingTarget OrderItem orderItem,OrderItemRequest request);

    List<OrderItemResponse> toOrderItemResponseList(List<OrderItem> orderItemList);

}
