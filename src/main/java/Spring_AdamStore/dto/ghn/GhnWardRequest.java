package Spring_AdamStore.dto.ghn;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class GhnWardRequest {

    @JsonProperty("district_id")
    private Integer districtId;
}
