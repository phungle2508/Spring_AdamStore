package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.UserCreationRequest;
import Spring_AdamStore.dto.request.UserUpdateRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.UserResponse;
import Spring_AdamStore.service.UserService;
import io.swagger.annotations.Tag;
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

@Slf4j(topic = "USER-CONTROLLER")
@RequiredArgsConstructor
@Validated
@RequestMapping("/v1")
@RestController
public class UserController {
    private final UserService userService;

    @Operation(summary = "Create User with Role",
            description = "API này được sử dụng để tạo user và gán role vào user đó")
    @PostMapping("/users")
    public ApiResponse<UserResponse> create(@Valid @RequestBody UserCreationRequest request){
        return ApiResponse.<UserResponse>builder()
                .code(HttpStatus.CREATED.value())
                .message("Create User With Role")
                .result(userService.create(request))
                .build();
    }


    @GetMapping("/users/{id}")
    public ApiResponse<UserResponse> fetchUser(@Positive(message = "ID phải lớn hơn 0")
                                               @PathVariable long id){
        return ApiResponse.<UserResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Fetch User By Id")
                .result(userService.fetchUserById(id))
                .build();
    }

    @GetMapping("/users")
    public ApiResponse<PageResponse<UserResponse>> fetchAll(@Min(value = 1, message = "pageNo phải lớn hơn 0")
                                                            @RequestParam(defaultValue = "1") int pageNo,
                                                            @RequestParam(defaultValue = "10") int pageSize,
                                                            @Pattern(regexp = "^(\\w+?)(-)(asc|desc)$", message = "Định dạng của sortBy phải là: field-asc hoặc field-desc")
                                                            @RequestParam(required = false) String sortBy){
        return ApiResponse.<PageResponse<UserResponse>>builder()
                .code(HttpStatus.OK.value())
                .result(userService.fetchAllUsers(pageNo, pageSize, sortBy))
                .message("Fetch All Users With Pagination")
                .build();
    }

    @Operation(summary = "Update User (No update Password)",
            description = "API này được sử dụng để update user (Gán company nếu người dùng là HR)")
    @PutMapping("/users/{id}")
    public ApiResponse<UserResponse> update(@Positive(message = "ID phải lớn hơn 0")
                                            @PathVariable long id,@Valid @RequestBody UserUpdateRequest request){
        return ApiResponse.<UserResponse>builder()
                .code(HttpStatus.OK.value())
                .message("Update User By Id")
                .result(userService.update(id, request))
                .build();
    }


    @DeleteMapping("/users/{id}")
    public ApiResponse<Void> delete(@Positive(message = "ID phải lớn hơn 0")
                                    @PathVariable long id){
        userService.delete(id);
        return ApiResponse.<Void>builder()
                .code(HttpStatus.NO_CONTENT.value())
                .message("Delete User By Id")
                .result(null)
                .build();
    }

}
