package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Branch;
import Spring_AdamStore.entity.ProductVariant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProductVariantRepository extends JpaRepository<ProductVariant, Long> {

    List<ProductVariant> findAllByProductId(Long productId);

    Optional<ProductVariant> findByProductIdAndColorIdAndSizeId(Long productId, Long colorId, Long sizeId);


}
