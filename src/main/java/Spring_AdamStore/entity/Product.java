package Spring_AdamStore.entity;

import Spring_AdamStore.constants.EntityStatus;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLRestriction;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDate;
import java.util.HashSet;
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
@EntityListeners(AuditingEntityListener.class)
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(nullable = false)
    String name;
    @Column(columnDefinition = "MEDIUMTEXT")
    String description;
    @ColumnDefault(value = "0")
    Integer soldQuantity;
    @ColumnDefault(value = "5.0")
    Double averageRating;
    @ColumnDefault("0")
    Integer totalReviews;

    @Enumerated(EnumType.STRING)
    @JoinColumn(name = "status", nullable = false)
    EntityStatus status;


    @CreatedBy
    String createdBy;
    @LastModifiedBy
    String updatedBy;
    @CreationTimestamp
    LocalDate createdAt;
    @UpdateTimestamp
    LocalDate updatedAt;


    @ManyToOne
    @JoinColumn(name = "category_id")
     Category category;

    @OneToMany(mappedBy = "product")
    Set<Review> reviews = new HashSet<>();

    @OneToMany(mappedBy = "product")
    Set<ProductImage> productImages = new HashSet<>();

    @OneToMany(mappedBy = "product")
    @JsonIgnore
    Set<ProductVariant> productVariants = new HashSet<>();

    @PrePersist
    public void prePersist() {
        if (status == null) {
            this.status = EntityStatus.ACTIVE;
        }
        if(soldQuantity == null){
            this.soldQuantity = 0;
        }
        if(averageRating == null){
            this.averageRating = 5.0;
        }
        if(totalReviews == null){
            this.totalReviews = 0;
        }
    }
}
