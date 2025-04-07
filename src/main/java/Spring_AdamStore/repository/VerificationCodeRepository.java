package Spring_AdamStore.repository;

import Spring_AdamStore.entity.VerificationCodeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface VerificationCodeRepository extends JpaRepository<VerificationCodeEntity, Long> {

    @Query("SELECT v FROM VerificationCodeEntity v WHERE v.email = :email")
    Optional<VerificationCodeEntity> findByEmail(@Param("email") String email);


    @Query("SELECT v FROM VerificationCodeEntity v " +
            "WHERE v.email = :email AND v.verificationCode = :verificationCode")
    Optional<VerificationCodeEntity> findByEmailAndVerificationCode(@Param("email") String email,
                                                                    @Param("verificationCode") String verificationCode);


}
