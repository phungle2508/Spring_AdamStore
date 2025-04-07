package Spring_AdamStore.entity;

import Spring_AdamStore.constants.EntityStatus;
import Spring_AdamStore.constants.Gender;
import Spring_AdamStore.entity.relationship.UserHasRole;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLRestriction;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Table(name = "tbl_user")
@SQLRestriction("status = 'ACTIVE'")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class User{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(nullable = false)
    String name;
    @Column(unique = true, nullable = false)
    String email;
    @Column(unique = true, nullable = false)
    String phone;
    String password;
    String avatarUrl;

    @ColumnDefault("18")
    Integer age;
    @Enumerated(EnumType.STRING)
    Gender gender;

    @Enumerated(EnumType.STRING)
    @JoinColumn(name = "status", nullable = false)
    EntityStatus status;

    @CreationTimestamp
    LocalDate createdAt;
    @UpdateTimestamp
    LocalDate updatedAt;


    @OneToMany(mappedBy = "user")
     Set<Order> orders;

    @OneToMany(mappedBy = "user")
     Set<Address> addresses;

    @OneToMany(mappedBy = "user")
     Set<Review> reviews;

    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    Set<UserHasRole> roles = new HashSet<>();

    @PrePersist
    public void prePersist() {
        if (status == null) {
            this.status = EntityStatus.ACTIVE;
        }
    }
}
