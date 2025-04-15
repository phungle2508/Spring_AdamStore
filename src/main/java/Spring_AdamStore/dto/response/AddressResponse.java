package Spring_AdamStore.dto.response;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.basic.UserBasic;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.persistence.JoinColumn;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AddressResponse {

    Long id;
    Boolean isDefault;
    String streetDetail;

    EntityBasic ward;

    EntityBasic district;

    EntityBasic province;

    UserBasic user;
}
