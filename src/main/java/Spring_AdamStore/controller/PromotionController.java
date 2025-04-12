package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.request.PromotionRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProductResponse;
import Spring_AdamStore.dto.response.PromotionResponse;
import Spring_AdamStore.service.ProductService;
import Spring_AdamStore.service.PromotionService;
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

@Slf4j(topic = "PROMOTION-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class PromotionController {

    private final PromotionService promotionService;

    @PostMapping("/promotions")
    public ApiResponse<PromotionResponse> create(@Valid @RequestBody PromotionRequest request){
        return ApiResponse.<PromotionResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create Promotion")
                .result(promotionService.create(request))
                .build();
    }


    @GetMapping("/promotions/{id}")
    public ApiResponse<PromotionResponse> fetchById(@Min(value = 1, message = "ID phải lớn hơn 0")
                                                  @PathVariable Long id){
        return ApiResponse.<PromotionResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Promotion By Id")
                .result(promotionService.fetchById(id))
                .build();
    }

    @GetMapping("/promotions")
    public ApiResponse<PageResponse<PromotionResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                               @RequestParam(defaultValue = "1") int pageNo,
                                                               @RequestParam(defaultValue = "10") int pageSize,
                                                               @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<PromotionResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(promotionService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All Promotions With Pagination")
                .build();
    }

    @PutMapping("/promotions/{id}")
    public ApiResponse<PromotionResponse> update(@Min(value = 1, message = "ID phải lớn hơn 0")
                                               @PathVariable Long id, @Valid @RequestBody PromotionRequest request){
        return ApiResponse.<PromotionResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Promotion By Id")
                .result(promotionService.update(id, request))
                .build();
    }


    @DeleteMapping("/promotions/{id}")
    public ApiResponse<Void> delete(@Min(value = 1, message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        promotionService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Promotion By Id")
                .result(null)
                .build();
    }

}
