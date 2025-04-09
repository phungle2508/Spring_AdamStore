package Spring_AdamStore.dto.request;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PromotionRequest {

    String title;
    String description;
    Integer discountPercent;
    LocalDate startDate;
    LocalDate endDate;

}
