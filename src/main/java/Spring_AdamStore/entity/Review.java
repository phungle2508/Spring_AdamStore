package Spring_AdamStore.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Table(name = "tbl_review")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     Long id;

     Integer rating;
     String comment;

    @ManyToOne
    @JoinColumn(name = "user_id")
     User user;

    @ManyToOne
    @JoinColumn(name = "product_id")
     Product product;
}
