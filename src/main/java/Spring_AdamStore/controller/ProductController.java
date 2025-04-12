package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.request.ProductUpdateRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProductResponse;
import Spring_AdamStore.dto.response.ReviewResponse;
import Spring_AdamStore.service.ProductService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Slf4j(topic = "PRODUCT-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class ProductController {

    private final ProductService productService;

    @PostMapping("/products")
    public ApiResponse<ProductResponse> create(@Valid @RequestBody ProductRequest request){
        return ApiResponse.<ProductResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create Product")
                .result(productService.create(request))
                .build();
    }


    @GetMapping("/products/{id}")
    public ApiResponse<ProductResponse> fetchById(@Min(value = 1, message = "ID phải lớn hơn 0")
                                               @PathVariable Long id){
        return ApiResponse.<ProductResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Product By Id")
                .result(productService.fetchById(id))
                .build();
    }

    @GetMapping("/products")
    public ApiResponse<PageResponse<ProductResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                            @RequestParam(defaultValue = "1") int pageNo,
                                                            @RequestParam(defaultValue = "10") int pageSize,
                                                            @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<ProductResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(productService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All Products With Pagination")
                .build();
    }

    @PutMapping("/products/{id}")
    public ApiResponse<ProductResponse> update(@Min(value = 1, message = "ID phải lớn hơn 0")
                                            @PathVariable Long id, @Valid @RequestBody ProductUpdateRequest request){
        return ApiResponse.<ProductResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Product By Id")
                .result(productService.update(id, request))
                .build();
    }


    @DeleteMapping("/products/{id}")
    public ApiResponse<Void> delete(@Min(value = 1, message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        productService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Product By Id")
                .result(null)
                .build();
    }

    @GetMapping("/products/{productId}/reviews")
    public ApiResponse<PageResponse<ReviewResponse>> fetchReviewsByProductId(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                                                 @RequestParam(defaultValue = "1") int pageNo,
                                                                             @RequestParam(defaultValue = "10") int pageSize,
                                                                             @RequestParam(required = false) String sortBy,
                                                                             @Min(value = 1, message = "ID phải lớn hơn 0")
                                                                         @PathVariable Long productId) {
        return ApiResponse.<PageResponse<ReviewResponse>>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Reviews By Product Id")
                .result(productService.fetchReviewsByProductId(pageNo, pageSize, sortBy, productId))
                .build();
    }
}
