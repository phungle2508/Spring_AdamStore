package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Branch;
import Spring_AdamStore.entity.ProductVariant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductVariantRepository extends JpaRepository<ProductVariant, Long> {


}
