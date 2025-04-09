package Spring_AdamStore.controller;

import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.PromotionResponse;
import Spring_AdamStore.dto.response.ProvinceResponse;
import Spring_AdamStore.service.ProvinceService;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Slf4j(topic = "PROVINCE-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class ProvinceController {

    private final ProvinceService provinceService;

    @GetMapping("/provinces/{id}")
    public ApiResponse<ProvinceResponse> fetchById(@Positive(message = "ID phải lớn hơn 0")
                                                    @PathVariable Long id){
        return ApiResponse.<ProvinceResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Province By Id")
                .result(provinceService.fetchById(id))
                .build();
    }

    @GetMapping("/provinces")
    public ApiResponse<PageResponse<ProvinceResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                                 @RequestParam(defaultValue = "1") int pageNo,
                                                                 @RequestParam(defaultValue = "10") int pageSize,
                                                                 @Pattern(regexp = "^(\\w+?)(-)(asc|desc)$", message = "Định dạng của sortBy phải là: field-asc hoặc field-desc")
                                                                 @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<ProvinceResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(provinceService.fetchAll(pageNo, pageSize, sortBy))
                .message("Fetch All Provinces With Pagination")
                .build();
    }

}
