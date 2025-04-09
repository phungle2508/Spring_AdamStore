package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.OrderItemRequest;
import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.OrderItemResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.service.OrderItemService;
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

@Slf4j(topic = "ORDER-ITEM-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class OrderItemController {

    private final OrderItemService orderItemService;

    @Operation(summary = "Create OrderItem",
            description = "API này được sử dụng để tạo OrderItem")
    @PostMapping("/items")
    public ApiResponse<OrderItemResponse> create(@Valid @RequestBody OrderItemRequest request){
        return ApiResponse.<OrderItemResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create OrderItem")
                .result(orderItemService.create(request))
                .build();
    }


    @GetMapping("/items/{id}")
    public ApiResponse<OrderItemResponse> fetchById(@Positive(message = "ID phải lớn hơn 0")
                                                  @PathVariable Long id){
        return ApiResponse.<OrderItemResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch OrderItem By Id")
                .result(orderItemService.fetchById(id))
                .build();
    }

    @GetMapping("/items")
    public ApiResponse<PageResponse<OrderItemResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                               @RequestParam(defaultValue = "1") int pageNo,
                                                               @RequestParam(defaultValue = "10") int pageSize,
                                                               @Pattern(regexp = "^(\\w+?)(-)(asc|desc)$", message = "Định dạng của sortBy phải là: field-asc hoặc field-desc")
                                                               @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<OrderItemResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(orderItemService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All OrderItems With Pagination")
                .build();
    }

    @Operation(summary = "Update Product",
            description = "API này được sử dụng để update Product")
    @PutMapping("/items/{id}")
    public ApiResponse<OrderItemResponse> update(@Positive(message = "ID phải lớn hơn 0")
                                               @PathVariable Long id, @Valid @RequestBody OrderItemRequest request){
        return ApiResponse.<OrderItemResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update OrderItem By Id")
                .result(orderItemService.update(id, request))
                .build();
    }


    @DeleteMapping("/items/{id}")
    public ApiResponse<Void> delete(@Positive(message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        orderItemService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete OrderItem By Id")
                .result(null)
                .build();
    }
}
