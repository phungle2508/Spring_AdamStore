package Spring_AdamStore.service.Impl;

import Spring_AdamStore.constants.TokenType;
import Spring_AdamStore.dto.request.EmailRequest;
import Spring_AdamStore.dto.request.ResetPasswordRequest;
import Spring_AdamStore.entity.ForgotPasswordToken;
import Spring_AdamStore.entity.User;
import Spring_AdamStore.entity.VerificationCodeEntity;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.repository.ForgotPasswordTokenRepository;
import Spring_AdamStore.repository.UserRepository;
import Spring_AdamStore.repository.VerificationCodeRepository;
import Spring_AdamStore.service.AccountRecoveryService;
import Spring_AdamStore.service.EmailService;
import Spring_AdamStore.service.TokenService;
import com.nimbusds.jose.JOSEException;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.jwt.BadJwtException;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.util.Optional;


@Service
@Slf4j(topic = "ACCOUNT-RECOVERY-SERVICE")
@RequiredArgsConstructor
public class AccountRecoveryServiceImpl implements AccountRecoveryService {

    private final UserRepository userRepository;
    private final VerificationCodeRepository verificationCodeRepository;
    private final TokenService tokenService;
    private final ForgotPasswordTokenRepository forgotPasswordTokenRepository;
    private final PasswordEncoder passwordEncoder;
    private final EmailService emailService;

    @Value("${jwt.reset.expiry-in-minutes}")
    private long resetTokenExpiration;
    @Value("${app.forgot-password.verification-code.expiration-minutes}")
    private long forgotPasswordExpiration;

    @Override
    public VerificationCodeEntity forgotPassword(EmailRequest request) {
        User user = userRepository.findByEmail(request.getEmail())
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        String verificationCode = generateVerificationCode();

        try {
            emailService.sendPasswordResetCode(user, verificationCode);

            LocalDateTime expirationTime = LocalDateTime.now().plusMinutes(forgotPasswordExpiration);

            VerificationCodeEntity verificationCodeEntity = VerificationCodeEntity.builder()
                    .email(user.getEmail())
                    .verificationCode(verificationCode)
                    .expirationTime(expirationTime)
                    .build();

            return saveVerificationCode(verificationCodeEntity);
        } catch (Exception e) {
            log.error("Lỗi gửi email: ", e);
            throw new AppException(ErrorCode.EMAIL_SEND_FAILED);
        }
    }

    private VerificationCodeEntity saveVerificationCode(VerificationCodeEntity code){
        Optional<VerificationCodeEntity> entityOptional = verificationCodeRepository.findByEmail(code.getEmail());

        if (entityOptional.isPresent()) {
            VerificationCodeEntity entity = entityOptional.get();
            entity.setVerificationCode(code.getVerificationCode());
            entity.setExpirationTime(code.getExpirationTime());
            return verificationCodeRepository.save(entity);
        }

        return verificationCodeRepository.save(code);
    }

    @Override
    public ForgotPasswordToken verifyForgotPasswordCode(String email, String verificationCode) throws JOSEException {
        VerificationCodeEntity verificationCodeEntity = verificationCodeRepository
                .findByEmailAndVerificationCode(email, verificationCode)
                .orElseThrow(() -> new AppException(ErrorCode.VERIFICATION_CODE_NOT_FOUND));

        if (verificationCodeEntity.getExpirationTime().isBefore(LocalDateTime.now())) {
            throw new AppException(ErrorCode.VERIFICATION_CODE_EXPIRED);
        }

        User user = userRepository.findByEmail(email).orElseThrow(
                () -> new AppException(ErrorCode.USER_NOT_EXISTED));

        String forgotPasswordToken = tokenService.generateToken(user, TokenType.RESET_PASSWORD_TOKEN);
        ForgotPasswordToken token = ForgotPasswordToken.builder()
                .email(email)
                .forgotPasswordToken(forgotPasswordToken)
                .expiryTime(LocalDateTime.now().plusMinutes(resetTokenExpiration))
                .build();

        verificationCodeRepository.delete(verificationCodeEntity);

        return forgotPasswordTokenRepository.save(token);
    }

    @Transactional
    @Override
    public void resetPassword(ResetPasswordRequest request) {
        try {
            tokenService.verifyToken(request.getForgotPasswordToken(), TokenType.RESET_PASSWORD_TOKEN);
        } catch (JOSEException | ParseException e) {
            throw new BadJwtException(e.getMessage());
        } catch (AppException ex){
            throw new BadJwtException("Token không hợp lệ");
        }
        ForgotPasswordToken forgotPasswordToken = forgotPasswordTokenRepository
                .findByForgotPasswordToken(request.getForgotPasswordToken())
                .orElseThrow( () -> new AppException(ErrorCode.FORGOT_PASSWORD_TOKEN_NOT_FOUND));

        User user = userRepository.findByEmail(forgotPasswordToken.getEmail()).orElseThrow(
                () -> new AppException(ErrorCode.USER_NOT_EXISTED));

        if (!request.getNewPassword().equals(request.getConfirmPassword())) {
            throw new AppException(ErrorCode.PASSWORD_MISMATCH);
        }

        user.setPassword(passwordEncoder.encode(request.getNewPassword()));
        userRepository.save(user);

        forgotPasswordTokenRepository.delete(forgotPasswordToken);
    }

    private String generateVerificationCode() {
        return String.format("%06d", (int) (Math.random() * 1000000));
    }
}
