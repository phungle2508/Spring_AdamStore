package Spring_AdamStore.controller;

import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.ProductVariantResponse;
import Spring_AdamStore.service.ProductVariantService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.constraints.Min;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j(topic = "PRODUCT-VARIANT-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class ProductVariantController {

    private final ProductVariantService productVariantService;

    @Operation(summary = "Fetch product variant by product, color, size"
            , description = "API để tìm kiếm Product-Variant theo product, color, size")
    @GetMapping("/product-variants")
    public ApiResponse<ProductVariantResponse> findByProductAndColorAndSize(@Min(value = 1, message = "productId phải lớn hơn 0")
                                                                                @RequestParam Long productId,
                                                                            @Min(value = 1, message = "colorId phải lớn hơn 0")
                                                                            @RequestParam Long colorId,
                                                                            @Min(value = 1, message = "sizeId phải lớn hơn 0")
                                                                                @RequestParam Long sizeId) {
        return ApiResponse.<ProductVariantResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch product variant by product, color, size")
                .result(productVariantService.findByProductAndColorAndSize(productId, colorId, sizeId))
                .build();
    }



}
