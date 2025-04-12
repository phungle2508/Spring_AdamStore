
package Spring_AdamStore.repository;

import Spring_AdamStore.entity.CartItem;
import Spring_AdamStore.entity.Color;
import Spring_AdamStore.entity.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Long> {

    Optional<CartItem> findByCartIdAndProductVariantId(Long cartId, Long productVariantId);

}
