package Spring_AdamStore.entity;

import Spring_AdamStore.constants.PaymentStatus;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.ColumnDefault;

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
     @JoinColumn(nullable = false)
    @ColumnDefault(value = "0")
     Double totalAmount;
    @Enumerated(EnumType.STRING)
    @JoinColumn(nullable = false)
     PaymentStatus paymentStatus;
     LocalDateTime paymentTime;
     String note;

    @ManyToOne
    @JoinColumn(name = "order_id")
     Order order;
}
