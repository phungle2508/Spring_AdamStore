package Spring_AdamStore.dto.request;

import Spring_AdamStore.constants.OrderStatus;
import Spring_AdamStore.dto.validator.EnumPattern;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.experimental.FieldDefaults;

@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderRequest {

    Double totalPrice;
    @EnumPattern(name = "orderStatus", regexp = "PENDING|PROCESSING|SHIPPED|DELIVERED|CANCELLED")
    OrderStatus orderStatus;
}
