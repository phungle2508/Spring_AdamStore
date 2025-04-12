package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Color;
import Spring_AdamStore.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ColorRepository extends JpaRepository<Color, Long> {

    boolean existsByName(String name);

}
