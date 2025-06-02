package Spring_AdamStore.dto.ghn.response;

import lombok.*;
import lombok.experimental.FieldDefaults;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GhnResponse {

     Integer code;
     String message;
     ShippingFeeResponse data;
}
