package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.ProductVariantUpdateRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.ProductVariantResponse;
import Spring_AdamStore.service.ProductVariantService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Min;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

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

    @Operation(summary = "Update price and quantity for a product variant",
            description = "API để cập nhật giá và số lượng cho ProductVariant")
    @PutMapping("/product-variants/{id}")
    public ApiResponse<ProductVariantResponse> updatePriceAndQuantity(@Min(value = 1, message = "productVariantId phải lớn hơn 0")
                                                                          @PathVariable Long id,
                                                                      @RequestBody @Valid ProductVariantUpdateRequest request) {
        return ApiResponse.<ProductVariantResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update price quantity of Product-variant")
                .result(productVariantService.updatePriceAndQuantity(id, request))
                .build();
    }
}
