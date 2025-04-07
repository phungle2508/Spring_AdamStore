package Spring_AdamStore.service.Impl;

import Spring_AdamStore.constants.EntityStatus;
import Spring_AdamStore.dto.request.UserCreationRequest;
import Spring_AdamStore.dto.request.UserUpdateRequest;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.UserResponse;
import Spring_AdamStore.entity.User;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.UserMapper;
import Spring_AdamStore.repository.UserRepository;
import Spring_AdamStore.service.PageableService;
import Spring_AdamStore.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@Slf4j(topic = "USER-SERVICE")
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final PageableService pageableService;

    @Override
    public UserResponse create(UserCreationRequest request) {
        checkUserExistenceAndStatus(request.getEmail(), request.getPhone());
        User user = userMapper.userCreationToUser(request);

        user.setPassword(passwordEncoder.encode(request.getPassword()));

        userRepository.save(user);

        return userMapper.toUserResponse(user);
    }

    @Override
    public UserResponse fetchUserById(Long id) {
        User userDB = findActiveUserById(id);

        return userMapper.toUserResponse(userDB);
    }

    @Override
    public PageResponse<UserResponse> fetchAllUsers(int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<User> userPage = userRepository.findAll(pageable);

        return PageResponse.<UserResponse>builder()
                .page(userPage.getNumber() + 1)
                .size(userPage.getSize())
                .totalPages(userPage.getTotalPages())
                .totalItems(userPage.getTotalElements())
                .items(userMapper.toUserResponseList(userPage.getContent()))
                .build();
    }

    @Override
    public UserResponse update(Long id, UserUpdateRequest request) {
        User userDB = findActiveUserById(id);

        userMapper.updateUser(userDB, request);

        return userMapper.toUserResponse(userRepository.save(userDB));
    }

    @Override
    public void delete(Long id) {
        User userDB = findActiveUserById(id);

        userDB.setStatus(EntityStatus.INACTIVE);

        userRepository.save(userDB);
    }

    private void checkUserExistenceAndStatus(String email, String phone) {
        if (userRepository.countByEmailAndStatus(email, EntityStatus.ACTIVE.name()) > 0) {
            throw new AppException(ErrorCode.EMAIL_EXISTED);
        }
        if (userRepository.countByPhoneAndStatus(phone, EntityStatus.ACTIVE.name()) > 0) {
            throw new AppException(ErrorCode.PHONE_EXISTED);
        }
        if (userRepository.countByEmailAndStatus(email, EntityStatus.INACTIVE.name()) > 0) {
            throw new AppException(ErrorCode.EMAIL_DISABLED);
        }
        if (userRepository.countByPhoneAndStatus(phone, EntityStatus.INACTIVE.name()) > 0) {
            throw new AppException(ErrorCode.PHONE_DISABLED);
        }
    }

    private User findActiveUserById(Long id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));
    }
}
