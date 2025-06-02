package Spring_AdamStore.dto.ghn;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import lombok.experimental.FieldDefaults;

@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GhnWard {

    @JsonProperty("WardCode")
     String wardCode;
    @JsonProperty("WardName")
     String wardName;
}
