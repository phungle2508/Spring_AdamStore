package Spring_AdamStore.dto.response;

import Spring_AdamStore.constants.Gender;
import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.Set;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserResponse {

    Long id;
    String name;
    String email;
    String phone;
    String avatarUrl;
    int age;
    @Enumerated(EnumType.STRING)
    Gender gender;
    String address;


//    Set<EntityBasic> roles;
}
