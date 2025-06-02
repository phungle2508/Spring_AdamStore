package Spring_AdamStore.dto.ghn.response;

import Spring_AdamStore.dto.ghn.GhnWard;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GhnWardResponse {

     Integer code;
     String message;
     List<GhnWard> data;
}
