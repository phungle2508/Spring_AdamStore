package Spring_AdamStore.service.Impl;

import Spring_AdamStore.constants.EntityStatus;
import Spring_AdamStore.constants.RoleEnum;
import Spring_AdamStore.dto.request.UserCreationRequest;
import Spring_AdamStore.dto.request.UserUpdateRequest;
import Spring_AdamStore.dto.response.AddressResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.UserResponse;
import Spring_AdamStore.entity.Address;
import Spring_AdamStore.entity.Role;
import Spring_AdamStore.entity.User;
import Spring_AdamStore.entity.relationship.UserHasRole;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.AddressMapper;
import Spring_AdamStore.mapper.UserMapper;
import Spring_AdamStore.repository.AddressRepository;
import Spring_AdamStore.repository.RoleRepository;
import Spring_AdamStore.repository.UserRepository;
import Spring_AdamStore.repository.relationship.UserHasRoleRepository;
import Spring_AdamStore.service.PageableService;
import Spring_AdamStore.service.UserService;
import Spring_AdamStore.service.relationship.UserHasRoleService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@Slf4j(topic = "USER-SERVICE")
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final PageableService pageableService;
    private final UserHasRoleService userHasRoleService;
    private final RoleRepository roleRepository;
    private final UserHasRoleRepository userHasRoleRepository;
    private final AddressRepository addressRepository;
    private final AddressMapper addressMapper;

    @Override
    public UserResponse create(UserCreationRequest request) {
        checkPhoneAndEmailExist(request.getEmail(), request.getPhone());
        User user = userMapper.userCreationToUser(request);

        user.setPassword(passwordEncoder.encode(request.getPassword()));

        userRepository.save(user);

        // role user mac dinh
        Set<UserHasRole> roles = new HashSet<>();
        roles.add(userHasRoleService.saveUserHasRole(user, RoleEnum.USER));
        if(!CollectionUtils.isEmpty(request.getRoleIds())){
            Set<Role> roleSet = roleRepository.findAllByIdIn(request.getRoleIds());

            Set<UserHasRole> userRoles = roleSet.stream()
                    .filter(role -> !role.getName().equals(RoleEnum.USER.toString()))
                    .map(role -> new UserHasRole(user, role))
                    .collect(Collectors.toSet());

            roles.addAll(userHasRoleRepository.saveAll(userRoles));
        }
        user.setRoles(roles);

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

        if(!CollectionUtils.isEmpty(request.getRoleIds())){
            userHasRoleRepository.deleteByUser(userDB);

            Set<UserHasRole> roles = new HashSet<>();
            // role user mac dinh
            roles.add(userHasRoleService.saveUserHasRole(userDB, RoleEnum.USER));

            Set<Role> roleSet = roleRepository.findAllByIdIn(request.getRoleIds());

            Set<UserHasRole> userRoles = roleSet.stream()
                    .filter(role -> !role.getName().equals(RoleEnum.USER.toString()))
                    .map(role -> new UserHasRole(userDB, role))
                    .collect(Collectors.toSet());

            roles.addAll(userHasRoleRepository.saveAll(userRoles));

            userDB.setRoles(roles);
        }

        return userMapper.toUserResponse(userRepository.save(userDB));
    }

    @Override
    public void delete(Long id) {
        User userDB = findActiveUserById(id);

        userDB.setStatus(EntityStatus.INACTIVE);

        userRepository.save(userDB);
    }

    @Override
    public PageResponse<AddressResponse> getAllAddressesByUserId(int pageNo, int pageSize, String sortBy, Long userId) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        User userDB = findActiveUserById(userId);

        Page<Address> addressPage = addressRepository.findAllByUserId(userDB.getId(), pageable);

        return PageResponse.<AddressResponse>builder()
                .page(addressPage.getNumber() + 1)
                .size(addressPage.getSize())
                .totalPages(addressPage.getTotalPages())
                .totalItems(addressPage.getTotalElements())
                .items(addressMapper.toAddressResponseList(addressPage.getContent()))
                .build();
    }

    private void checkPhoneAndEmailExist(String email, String phone) {
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
