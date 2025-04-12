package Spring_AdamStore.dto.request;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PromotionRequest {

    @NotBlank(message = "title không được để trống")
    String title;
    String description;
    @NotNull(message = "discountPercent không được null")
    @Min(value = 0, message = "discountPercent phải lớn hơn 0")
    Integer discountPercent;
    @NotNull(message = "startDate không được null")
    LocalDate startDate;
    @NotNull(message = "endDate không được null")
    LocalDate endDate;

}
