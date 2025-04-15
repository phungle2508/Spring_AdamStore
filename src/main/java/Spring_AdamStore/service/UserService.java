package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.UserCreationRequest;
import Spring_AdamStore.dto.request.UserUpdateRequest;
import Spring_AdamStore.dto.response.AddressResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.UserResponse;
import jakarta.validation.constraints.Min;

public interface UserService {

    UserResponse create(UserCreationRequest request);

    UserResponse fetchUserById(Long id);

    PageResponse<UserResponse> fetchAllUsers(int pageNo, int pageSize, String sortBy);

    UserResponse update(Long id, UserUpdateRequest request);

    void delete(Long id);

    PageResponse<AddressResponse> getAllAddressesByUserId(int pageNo, int pageSize, String sortBy, Long userId);

}
