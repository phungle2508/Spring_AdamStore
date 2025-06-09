package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.UserCreationRequest;
import Spring_AdamStore.dto.request.UserUpdateRequest;
import Spring_AdamStore.dto.response.AddressResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.PromotionResponse;
import Spring_AdamStore.dto.response.UserResponse;
import jakarta.validation.constraints.Min;
import org.springframework.data.domain.Pageable;

public interface UserService {

    UserResponse create(UserCreationRequest request);

    UserResponse fetchUserById(Long id);

    PageResponse<UserResponse> fetchAllUsers(Pageable pageable);

    UserResponse update(Long id, UserUpdateRequest request);

    void delete(Long id);

    PageResponse<AddressResponse> getAllAddressesByUser(Pageable pageable);

    PageResponse<PromotionResponse> getPromotionsByUser(Pageable pageable);

    UserResponse restore(long id);

}
