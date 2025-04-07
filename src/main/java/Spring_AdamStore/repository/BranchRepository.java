package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Branch;
import Spring_AdamStore.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BranchRepository extends JpaRepository<Branch, Long> {

    boolean existsByName(String name);

}
