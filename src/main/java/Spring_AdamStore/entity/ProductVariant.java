package Spring_AdamStore.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;

import java.util.HashSet;
import java.util.Set;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Table(name = "tbl_product_variant", indexes = {
        @Index(name = "idx_product_id", columnList = "product_id"),
        @Index(name = "idx_color_id", columnList = "color_id"),
        @Index(name = "idx_size_id", columnList = "size_id")
})
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
@Entity
public class ProductVariant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    Double price;
    Integer quantity;

    @ManyToOne
    @JoinColumn(name = "product_id")
    Product product;

    @ManyToOne
    @JoinColumn(name = "color_id")
    Color color;

    @ManyToOne
    @JoinColumn(name = "size_id")
    Size size;

    @OneToMany(mappedBy = "productVariant")
     Set<CartItem> cartItems = new HashSet<>();

    @OneToMany(mappedBy = "productVariant")
    Set<OrderItem> orderItems = new HashSet<>();
}
