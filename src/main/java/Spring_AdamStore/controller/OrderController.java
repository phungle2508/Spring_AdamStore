package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.OrderItemRequest;
import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.OrderItemResponse;
import Spring_AdamStore.dto.response.OrderResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.service.OrderService;
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

@Slf4j(topic = "ORDER-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class OrderController {

    private final OrderService orderService;

    @PostMapping("/orders")
    public ApiResponse<OrderResponse> create(@Valid @RequestBody OrderRequest request){
        return ApiResponse.<OrderResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create Order")
                .result(orderService.create(request))
                .build();
    }


    @GetMapping("/orders/{id}")
    public ApiResponse<OrderResponse> fetchById(@Positive(message = "ID phải lớn hơn 0")
                                                    @PathVariable Long id){
        return ApiResponse.<OrderResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Order By Id")
                .result(orderService.fetchById(id))
                .build();
    }

    @GetMapping("/orders")
    public ApiResponse<PageResponse<OrderResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                                 @RequestParam(defaultValue = "1") int pageNo,
                                                                 @RequestParam(defaultValue = "10") int pageSize,
                                                                 @Pattern(regexp = "^(\\w+?)(-)(asc|desc)$", message = "Định dạng của sortBy phải là: field-asc hoặc field-desc")
                                                                 @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<OrderResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(orderService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All Orders With Pagination")
                .build();
    }

    @PutMapping("/orders/{id}")
    public ApiResponse<OrderResponse> update(@Positive(message = "ID phải lớn hơn 0")
                                                 @PathVariable Long id, @Valid @RequestBody OrderRequest request){
        return ApiResponse.<OrderResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Order By Id")
                .result(orderService.update(id, request))
                .build();
    }


    @DeleteMapping("/orders/{id}")
    public ApiResponse<Void> delete(@Positive(message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        orderService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Order By Id")
                .result(null)
                .build();
    }
}
