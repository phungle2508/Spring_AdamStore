package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.BranchRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.BranchResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.service.BranchService;
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

@Slf4j(topic = "BRANCH-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class BranchController {

    private final BranchService branchService;

    @Operation(summary = "Create Branch",
            description = "API này được sử dụng để tạo Branch")
    @PostMapping("/branches")
    public ApiResponse<BranchResponse> create(@Valid @RequestBody BranchRequest request){
        return ApiResponse.<BranchResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create Branch")
                .result(branchService.create(request))
                .build();
    }


    @GetMapping("/branches/{id}")
    public ApiResponse<BranchResponse> fetchUser(@Positive(message = "ID phải lớn hơn 0")
                                                   @PathVariable Long id){
        return ApiResponse.<BranchResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch Branch By Id")
                .result(branchService.fetchBranchById(id))
                .build();
    }

    @GetMapping("/branches")
    public ApiResponse<PageResponse<BranchResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                                @RequestParam(defaultValue = "1") int pageNo,
                                                                @RequestParam(defaultValue = "10") int pageSize,
                                                                @Pattern(regexp = "^(\\w+?)(-)(asc|desc)$", message = "Định dạng của sortBy phải là: field-asc hoặc field-desc")
                                                                @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<BranchResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(branchService.fetchAllBranches(pageNo, pageSize, sortBy))
                .message("Fetch All Branches With Pagination")
                .build();
    }

    @Operation(summary = "Update Branch",
            description = "API này được sử dụng để update Branch")
    @PutMapping("/branches/{id}")
    public ApiResponse<BranchResponse> update(@Positive(message = "ID phải lớn hơn 0")
                                                @PathVariable Long id, @Valid @RequestBody BranchRequest request){
        return ApiResponse.<BranchResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update Branch By Id")
                .result(branchService.update(id, request))
                .build();
    }


    @DeleteMapping("/branches/{id}")
    public ApiResponse<Void> delete(@Positive(message = "ID phải lớn hơn 0")
                                    @PathVariable Long id){
        branchService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete Category By Id")
                .result(null)
                .build();
    }
}
