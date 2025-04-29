package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Address;
import Spring_AdamStore.entity.Branch;
import Spring_AdamStore.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AddressRepository extends JpaRepository<Address, Long> {

    List<Address> findAllByUser(User user);

    Page<Address> findAllByUserId(Long userId, Pageable pageable);
}
