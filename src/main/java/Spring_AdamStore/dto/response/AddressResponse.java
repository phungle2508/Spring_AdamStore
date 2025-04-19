package Spring_AdamStore.dto.response;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.basic.UserBasic;
import Spring_AdamStore.dto.basic.WardBasic;
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

    UserBasic user;

    Boolean isDefault;
    String streetDetail;

    WardBasic ward;

    EntityBasic district;

    EntityBasic province;

}
