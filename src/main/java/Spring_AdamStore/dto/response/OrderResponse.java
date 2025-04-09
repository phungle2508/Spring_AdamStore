package Spring_AdamStore.dto.response;

import Spring_AdamStore.constants.OrderStatus;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.JoinColumn;
import lombok.*;
import lombok.experimental.FieldDefaults;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDate;
@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class OrderResponse {

    Long id;
    @JsonFormat(pattern = "dd/MM/yyyy")
    LocalDate orderDate;
    Double totalPrice;
    OrderStatus orderStatus;

    @JsonFormat(pattern = "dd/MM/yyyy")
    LocalDate createdAt;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    @JsonFormat(pattern = "dd/MM/yyyy")
    LocalDate updatedAt;
}
