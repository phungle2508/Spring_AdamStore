package Spring_AdamStore.dto.response;

import Spring_AdamStore.constants.Gender;
import Spring_AdamStore.dto.basic.EntityBasic;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.*;
import lombok.experimental.FieldDefaults;
import org.springframework.data.annotation.LastModifiedBy;

import java.time.LocalDate;
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
    LocalDate dob;
    @Enumerated(EnumType.STRING)
    Gender gender;
    String address;


    String createdBy;
    String updatedBy;
    @JsonFormat(pattern = "dd/MM/yyyy")
    LocalDate createdAt;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    @JsonFormat(pattern = "dd/MM/yyyy")
    LocalDate updatedAt;

    Set<EntityBasic> roles;
}
