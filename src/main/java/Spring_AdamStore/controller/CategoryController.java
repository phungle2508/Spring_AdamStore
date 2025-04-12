package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.CategoryRequest;
import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.*;
import Spring_AdamStore.service.CategoryService;
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

@Slf4j(topic = "CATEGORY-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class CategoryController {
    private final CategoryService categoryService;

    @PostMapping("/categories")
    public ApiResponse<CategoryResponse> create(@Valid @RequestBody CategoryRequest request){
        return ApiResponse.<CategoryResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create Category")
                .result(categoryService.create(request))
                .build();
    }


    @GetMapping("/categories/{id}")
    public ApiResponse<CategoryResponse> fetchById(@Min(value = 1, message = "ID phải lớn hơn 0")
                                                  @PathVariable Long id){
        return ApiResponse.<CategoryResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Category By Id")
                .result(categoryService.fetchById(id))
                .build();
    }

    @GetMapping("/categories")
    public ApiResponse<PageResponse<CategoryResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                               @RequestParam(defaultValue = "1") int pageNo,
                                                               @RequestParam(defaultValue = "10") int pageSize,
                                                               @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<CategoryResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(categoryService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All Categories With Pagination")
                .build();
    }

    @PutMapping("/categories/{id}")
    public ApiResponse<CategoryResponse> update(@Min(value = 1, message = "ID phải lớn hơn 0")
                                               @PathVariable Long id, @Valid @RequestBody CategoryRequest request){
        return ApiResponse.<CategoryResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Category By Id")
                .result(categoryService.update(id, request))
                .build();
    }


    @DeleteMapping("/categories/{id}")
    public ApiResponse<Void> delete(@Min(value = 1, message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        categoryService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Category By Id")
                .result(null)
                .build();
    }

    @Operation(description = "API dùng để lấy danh sách products của category")
    @GetMapping("/categories/{categoryId}/products")
    public ApiResponse<PageResponse<ProductResponse>> fetchByCategoryId(@RequestParam(defaultValue = "1") int pageNo,
                                                                         @RequestParam(defaultValue = "10") int pageSize,
                                                                         @RequestParam(required = false) String sortBy,
                                                                         @Min(value = 1, message = "categoryId phải lớn hơn 0")
                                                                         @PathVariable Long categoryId){
        return ApiResponse.<PageResponse<ProductResponse>>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Districts By Province ID With Pagination")
                .result(categoryService.fetchByCategoryId(pageNo, pageSize, sortBy, categoryId))
                .build();
    }
}
