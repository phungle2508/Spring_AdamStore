package Spring_AdamStore.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.persistence.JoinColumn;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PromotionResponse {

    Long id;

    String code;
    String description;
    Integer discountPercent;
    LocalDate startDate;
    LocalDate endDate;

    String createdBy;
    String updatedBy;
    LocalDate createdAt;
    LocalDate updatedAt;
}
