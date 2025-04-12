package Spring_AdamStore.dto.response;

import Spring_AdamStore.constants.PaymentStatus;
import lombok.*;
import lombok.experimental.FieldDefaults;
import java.time.LocalDateTime;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentHistoryResponse {

    Long id;

    String paymentMethod;
    Double totalAmount;
    PaymentStatus paymentStatus;
    LocalDateTime paymentTime;
    String note;
}
