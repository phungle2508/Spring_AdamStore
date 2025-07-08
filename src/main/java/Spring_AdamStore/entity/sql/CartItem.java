package Spring_AdamStore.entity.sql;

import jakarta.persistence.*;
import lombok.*;


@Getter
@Setter
@Table(name = "cart_items")
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CartItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Double price;
    private Integer quantity;


    private Long cartId;

    private Long productVariantId;

}
