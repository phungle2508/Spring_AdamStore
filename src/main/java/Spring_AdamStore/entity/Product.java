package Spring_AdamStore.entity;

import Spring_AdamStore.constants.EntityStatus;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLRestriction;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDate;
import java.util.Set;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter

@SQLRestriction("status = 'ACTIVE'")
@Table(name = "tbl_product")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(nullable = false)
    String name;
    @Column(columnDefinition = "MEDIUMTEXT")
    String description;
    @Column(nullable = false)
    Double price;
    @Column(nullable = false)
    Integer quantity;
    String imageUrl;

    @Enumerated(EnumType.STRING)
    @JoinColumn(name = "status", nullable = false)
    EntityStatus status;

    @CreationTimestamp
    LocalDate createdAt;
    @UpdateTimestamp
    LocalDate updatedAt;



    @ManyToOne
    @JoinColumn(name = "category_id")
     Category category;

    @OneToMany(mappedBy = "product")
     Set<OrderItem> orderItems;

    @OneToMany(mappedBy = "product")
     Set<Review> reviews;

    @ManyToOne
    @JoinColumn(name = "promotion_id")
     Promotion promotion;

    @PrePersist
    public void prePersist() {
        if (status == null) {
            this.status = EntityStatus.ACTIVE;
        }
    }
}
