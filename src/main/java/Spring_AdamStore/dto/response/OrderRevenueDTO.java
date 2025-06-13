package Spring_AdamStore.dto.response;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderRevenueDTO {

     private Long orderId;
     private String customerName;
     private LocalDate orderDate;
     private Double totalAmount;
}
