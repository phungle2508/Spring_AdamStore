package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.EmailRequest;
import Spring_AdamStore.dto.request.ResetPasswordRequest;
import Spring_AdamStore.entity.ForgotPasswordToken;
import Spring_AdamStore.entity.VerificationCodeEntity;
import com.nimbusds.jose.JOSEException;

public interface AccountRecoveryService {

    VerificationCodeEntity forgotPassword(EmailRequest request);

    ForgotPasswordToken verifyForgotPasswordCode(String email, String verificationCode) throws JOSEException;

    void resetPassword(ResetPasswordRequest request);
}
