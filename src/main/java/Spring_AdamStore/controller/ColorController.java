package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.CategoryRequest;
import Spring_AdamStore.dto.request.ColorRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.CategoryResponse;
import Spring_AdamStore.dto.response.ColorResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.service.CategoryService;
import Spring_AdamStore.service.ColorService;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Pattern;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springdoc.core.annotations.ParameterObject;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Slf4j(topic = "COLOR-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class ColorController {

    private final ColorService colorService;

    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping("/colors")
    public ApiResponse<ColorResponse> create(@Valid @RequestBody ColorRequest request){
        return ApiResponse.<ColorResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create Color")
                .result(colorService.create(request))
                .build();
    }

    @GetMapping("/colors")
    public ApiResponse<PageResponse<ColorResponse>> fetchAll(@ParameterObject @PageableDefault Pageable pageable){
        return ApiResponse.<PageResponse<ColorResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(colorService.fetchAll(pageable))
                .message("Fetch All Colors With Pagination")
                .build();
    }

    @PreAuthorize("hasRole('ADMIN')")
    @PutMapping("/colors/{id}")
    public ApiResponse<ColorResponse> update(@Min(value = 1, message = "ID phải lớn hơn 0")
                                                @PathVariable Long id, @Valid @RequestBody ColorRequest request){
        return ApiResponse.<ColorResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Color By Id")
                .result(colorService.update(id, request))
                .build();
    }

    @PreAuthorize("hasRole('ADMIN')")
    @DeleteMapping("/colors/{id}")
    public ApiResponse<Void> delete(@Min(value = 1, message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        colorService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Color By Id")
                .result(null)
                .build();
    }

}
