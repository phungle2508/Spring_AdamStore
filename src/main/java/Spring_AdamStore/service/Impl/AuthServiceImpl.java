package Spring_AdamStore.service.Impl;

import Spring_AdamStore.constants.EntityStatus;
import Spring_AdamStore.constants.TokenType;
import Spring_AdamStore.dto.request.LoginRequest;
import Spring_AdamStore.dto.request.RefreshRequest;
import Spring_AdamStore.dto.request.RegisterRequest;
import Spring_AdamStore.dto.request.TokenRequest;
import Spring_AdamStore.dto.response.TokenResponse;
import Spring_AdamStore.dto.response.UserResponse;
import Spring_AdamStore.entity.RedisRevokedToken;
import Spring_AdamStore.entity.User;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.UserMapper;
import Spring_AdamStore.repository.UserRepository;
import Spring_AdamStore.service.AuthService;
import Spring_AdamStore.service.EmailService;
import Spring_AdamStore.service.RedisTokenService;
import Spring_AdamStore.service.TokenService;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jwt.SignedJWT;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.util.Date;

@Service
@Slf4j(topic = "AUTH-SERVICE")
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService {

    private final EmailService emailService;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final TokenService tokenService;
    private final UserMapper userMapper;
    private final RedisTokenService redisTokenService;

    @Override
    public TokenResponse login(LoginRequest request) throws JOSEException {
        User userDB = userRepository.findByEmail(request.getEmail())
                .orElseThrow(()-> new AppException(ErrorCode.USER_NOT_EXISTED));

        boolean isAuthenticated = passwordEncoder.matches(request.getPassword(), userDB.getPassword());

        if(!isAuthenticated){
            throw new AppException(ErrorCode.INVALID_PASSWORD);
        }

        return generateAndSaveTokenResponse(userDB);
    }

    @Override
    public TokenResponse register(RegisterRequest request) throws JOSEException {
        checkUserExistenceAndStatus(request.getEmail(), request.getPhone());

        User user = userMapper.registerToUser(request);

        user.setPassword(passwordEncoder.encode(user.getPassword()));

        userRepository.save(user);

//        user.setRoles(new HashSet<>(Set.of(userHasRoleService.saveUserHasRole(user, RoleEnum.USER))));

        emailService.sendUserEmailWithRegister(user);

        return generateAndSaveTokenResponse(user);
    }

    @Override
    public UserResponse getMyInfo() {
        User user = userRepository.findByEmail(getCurrentUsername()).orElseThrow(
                () -> new AppException(ErrorCode.USER_NOT_EXISTED));

        return userMapper.toUserResponse(user);
    }

    @Override
    public TokenResponse refreshToken(RefreshRequest request) throws ParseException, JOSEException {
        // verify refresh token (db, expirationTime ...)
        SignedJWT signedJWT = tokenService.verifyToken(request.getRefreshToken(), TokenType.REFRESH_TOKEN);

        String email = signedJWT.getJWTClaimsSet().getSubject();
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        // new access token
        String accessToken = tokenService.generateToken(user, TokenType.ACCESS_TOKEN);

//        processUserRolesAndPermissions(user);

        return TokenResponse.builder()
                .accessToken(accessToken)
                .refreshToken(request.getRefreshToken())
                .email(email)
                .build();
    }

    @Override
    public void changePassword(String oldPassword, String newPassword) {
        User user = userRepository.findByEmail(getCurrentUsername())
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        if (!passwordEncoder.matches(oldPassword, user.getPassword())) {
            throw new AppException(ErrorCode.INVALID_OLD_PASSWORD);
        }
        user.setPassword(passwordEncoder.encode(newPassword));
        userRepository.save(user);
    }

    @Override
    public void logout(TokenRequest request) throws ParseException, JOSEException {
        SignedJWT signToken = tokenService.verifyToken(request.getAccessToken(), TokenType.ACCESS_TOKEN);

        String email = signToken.getJWTClaimsSet().getJWTID();
        Date expiryTime = signToken.getJWTClaimsSet().getExpirationTime();

        RedisRevokedToken redisRevokedToken = RedisRevokedToken.builder()
                .accessToken(request.getAccessToken())
                .email(email)
                .expiryTime(expiryTime)
                .ttl((expiryTime.getTime() - System.currentTimeMillis()) / 1000)
                .build();

        redisTokenService.saveRevokedToken(redisRevokedToken);
    }

    private TokenResponse generateAndSaveTokenResponse(User user) throws JOSEException {
        String accessToken = tokenService.generateToken(user, TokenType.ACCESS_TOKEN);

        String refreshToken = tokenService.generateToken(user, TokenType.REFRESH_TOKEN);

        tokenService.saveRefreshToken(refreshToken);

//        processUserRolesAndPermissions(user);

        return TokenResponse.builder()
                .accessToken(accessToken)
                .refreshToken(refreshToken)
                .authenticated(true)
                .email(user.getEmail())
                .build();
    }

    // info tu access token
    @Override
    public String getCurrentUsername(){
        var context = SecurityContextHolder.getContext();
        var authentication = context.getAuthentication();
        if (authentication == null || !authentication.isAuthenticated() || authentication.getPrincipal().equals("anonymousUser")) {
            throw new AppException(ErrorCode.UNAUTHORIZED);
        }
        return authentication.getName(); // email
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
}
