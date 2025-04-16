package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.OrderRequest;
import Spring_AdamStore.dto.request.UpdateOrderAddressRequest;
import Spring_AdamStore.dto.response.*;
import Spring_AdamStore.service.OrderService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Min;
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
    public ApiResponse<OrderResponse> fetchById(@Min(value = 1, message = "ID phải lớn hơn 0")
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
                                                                 @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<OrderResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(orderService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All Orders With Pagination")
                .build();
    }

    @Operation(summary = "Update Address for Order",
    description = "Cập nhập đia chỉ cho đơn hàng ở trạng thái PENDING hoặc PROCESSING")
    @PutMapping("/orders/{orderId}/address")
    public ApiResponse<OrderResponse> updateAddress(@Min(value = 1, message = "orderId phải lớn hơn 0")
                                                 @PathVariable Long orderId, @Valid @RequestBody UpdateOrderAddressRequest request){
        return ApiResponse.<OrderResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Order By Id")
                .result(orderService.updateAddress(orderId, request))
                .build();
    }


    @DeleteMapping("/orders/{id}")
    public ApiResponse<Void> delete(@Min(value = 1, message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        orderService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Order By Id")
                .result(null)
                .build();
    }

    @Operation(summary = "Calculate Shipping Fee",
    description = "Api này dùng để tính phí ship của đơn hàng " +
            "(totalPrice: giá tiền sản phẩm, toWardCode: code (phường/xã) của người nhận, toDistrictId: id quận/huyện người nhận)")
    @PostMapping("/shipping/calculate-fee")
    public ApiResponse<ShippingFeeResponse> calculateShippingFee(@RequestParam Double totalPrice,
                                                                 @RequestParam String toWardCode,
                                                                 @RequestParam Integer toDistrictId){
        return ApiResponse.<ShippingFeeResponse>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Calculate Shipping Fee")
                .result(orderService.shippingCost(totalPrice, toWardCode, toDistrictId))
                .build();
    }
}
