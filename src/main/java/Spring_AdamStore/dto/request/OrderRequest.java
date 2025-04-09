package Spring_AdamStore.dto.request;

import Spring_AdamStore.constants.OrderStatus;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.experimental.FieldDefaults;

@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderRequest {

    Double totalPrice;
    OrderStatus orderStatus;
}
