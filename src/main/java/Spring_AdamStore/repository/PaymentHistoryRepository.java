package Spring_AdamStore.repository;

import Spring_AdamStore.constants.PaymentStatus;
import Spring_AdamStore.entity.Order;
import Spring_AdamStore.entity.PaymentHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PaymentHistoryRepository extends JpaRepository<PaymentHistory, Long> {

    Optional<PaymentHistory> findByOrderIdAndPaymentStatus(Long orderId, PaymentStatus paymentStatus);
}
