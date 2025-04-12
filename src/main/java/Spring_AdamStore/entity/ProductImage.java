package Spring_AdamStore.entity;

import Spring_AdamStore.constants.EntityStatus;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Table(name = "tbl_product_image")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class ProductImage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     Long id;

     Boolean isDefault;
     String imageUrl;

    @ManyToOne
    @JoinColumn(name = "product_id")
     Product product;

    @PrePersist
    public void prePersist() {
        if (isDefault == null) {
            this.isDefault = false;
        }
    }


}
