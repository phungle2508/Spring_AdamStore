package Spring_AdamStore.repository;

import Spring_AdamStore.entity.Permission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface PermissionRepository extends JpaRepository<Permission,Long> {

    Set<Permission> findAllByNameIn(Set<String> names);

    List<Permission> findAllByIdIn(List<Long> ids);

    @Query("SELECT p FROM Permission p JOIN RoleHasPermission rp ON p.id = rp.permission.id WHERE rp.role.id IN :roleIds")
    Set<Permission> findAllByRoleIds(@Param("roleIds") Set<Long> roleIds);


}
