package Spring_AdamStore.dto.request;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.experimental.FieldDefaults;

@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CartItemRequest {

    @NotNull(message = "quantity không được để trống")
    @Min(value = 0, message = "quantity phải lớn hơn hoặc bằng 0")
    Integer quantity;

    @NotNull(message = "productVariantId không được để trống")
    Long productVariantId;

}
