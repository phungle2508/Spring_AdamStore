package Spring_AdamStore.dto.request;

import jakarta.validation.constraints.*;
import lombok.Getter;

import java.util.Set;

@Getter
public class ProductUpdateRequest {

    private String name;
    private String description;
    @Min(value = 0, message = "Giá phải lớn hơn hoặc bằng 0")
    @NotNull(message = "price không được null")
    private Double price;
    @Min(value = 0, message = "Giá phải lớn hơn hoặc bằng 0")
    @NotNull(message = "quantity không được null")
    private Integer quantity;

    private Long categoryId;

    private Set<Long> colorIds;

    private Set<Long> sizeIds;

    private Set<Long> imageIds;

}
