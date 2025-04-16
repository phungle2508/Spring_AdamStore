package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Order;
import Spring_AdamStore.entity.PaymentHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PaymentHistoryRepository extends JpaRepository<PaymentHistory, Long> {
}
