package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.response.RoleResponse;
import Spring_AdamStore.entity.Role;
import Spring_AdamStore.entity.relationship.UserHasRole;
import org.mapstruct.*;

import java.util.List;


@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS, uses = {PermissionMapper.class})
public interface RoleMapper {

    @Mapping(source = "permissions", target = "permissions", qualifiedByName = "roleHasPermissionToEntityBasic")
    RoleResponse toRoleResponse(Role role);

    List<RoleResponse> toRoleResponseList(List<Role> roles);

    @Mapping(target = "id", source = "userHasRole.role.id")
    @Mapping(target = "name", source = "userHasRole.role.name")
    @Named("userHasRoleToEntityBasic")
    EntityBasic userHasRoleToEntityBasic(UserHasRole userHasRole);


}
