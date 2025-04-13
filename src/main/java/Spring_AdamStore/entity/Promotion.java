package Spring_AdamStore.entity;

import Spring_AdamStore.constants.EntityStatus;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;
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
@Table(name = "tbl_promotion")
@SQLRestriction("status = 'ACTIVE'")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Promotion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     Long id;

    @JoinColumn(nullable = false)
    String code;
     String description;
     Integer discountPercent;
    @JoinColumn(nullable = false)
     LocalDate startDate;
    @JoinColumn(nullable = false)
     LocalDate endDate;

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


    @OneToMany(mappedBy = "promotion")
    Set<Order> orders = new HashSet<>();

    @PrePersist
    public void prePersist() {
        if (status == null) {
            this.status = EntityStatus.ACTIVE;
        }
    }
}
