package Spring_AdamStore.repository;

import Spring_AdamStore.entity.OrderItem;
import Spring_AdamStore.entity.Promotion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionRepository extends JpaRepository<Promotion, Long> {

    boolean existsByTitle(String title);

}
