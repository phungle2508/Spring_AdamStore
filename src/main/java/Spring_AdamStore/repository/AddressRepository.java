package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Address;
import Spring_AdamStore.entity.Branch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends JpaRepository<Address, Long> {


}
