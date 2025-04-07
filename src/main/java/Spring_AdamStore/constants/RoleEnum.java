package Spring_AdamStore.constants;

import java.util.Set;

public enum RoleEnum {
    ADMIN,
    USER;


    public static final Set<String> IMMUTABLE_SYSTEM_ROLES = Set.of(
            ADMIN.name(), USER.name()
    );
}
