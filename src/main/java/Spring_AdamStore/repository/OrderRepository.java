package Spring_AdamStore.repository;

import Spring_AdamStore.constants.OrderStatus;
import Spring_AdamStore.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

    List<Order> findByOrderStatusAndOrderDateBefore(OrderStatus orderStatus, LocalDate date);

}
