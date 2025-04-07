package Spring_AdamStore.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;

import java.time.LocalDateTime;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Table(name = "tbl_payment_history")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class PaymentHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     Long id;

     String paymentMethod;
     Double totalAmount;
     String status;
     LocalDateTime paymentTime;
     String note;

    @ManyToOne
    @JoinColumn(name = "order_id")
     Order order;
}
