package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.CategoryRequest;
import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.CategoryResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProductResponse;
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
    public ApiResponse<CategoryResponse> fetchById(@Positive(message = "ID phải lớn hơn 0")
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
                                                               @Pattern(regexp = "^(\\w+?)(-)(asc|desc)$", message = "Định dạng của sortBy phải là: field-asc hoặc field-desc")
                                                               @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<CategoryResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(categoryService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All Categories With Pagination")
                .build();
    }

    @PutMapping("/categories/{id}")
    public ApiResponse<CategoryResponse> update(@Positive(message = "ID phải lớn hơn 0")
                                               @PathVariable Long id, @Valid @RequestBody CategoryRequest request){
        return ApiResponse.<CategoryResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Category By Id")
                .result(categoryService.update(id, request))
                .build();
    }


    @DeleteMapping("/categories/{id}")
    public ApiResponse<Void> delete(@Positive(message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        categoryService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Category By Id")
                .result(null)
                .build();
    }
}
