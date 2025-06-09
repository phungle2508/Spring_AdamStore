package Spring_AdamStore.dto.request;

import jakarta.validation.constraints.*;
import lombok.Getter;

import java.util.Set;

@Getter
public class ProductRequest {

    @NotBlank(message = "Tên sản phẩm không được để trống")
    private String name;
    @NotBlank(message = "Mô tả sản phẩm không được để trống")
    private String description;
    @Min(value = 0, message = "Giá phải lớn hơn hoặc bằng 0")
    @NotNull(message = "price không được null")
    private Double price;
    @Min(value = 0, message = "Giá phải lớn hơn hoặc bằng 0")
    @NotNull(message = "quantity không được null")
    private Integer quantity;

    @NotNull(message = "categoryId không được null")
    private Long categoryId;

    @NotEmpty(message = "colors không được để trống")
    private Set<Long> colorIds;

    @NotEmpty(message = "sizes không được để trống")
    private Set<Long> sizeIds;

    private Set<Long> imageIds;

}
