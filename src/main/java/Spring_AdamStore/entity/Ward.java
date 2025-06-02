package Spring_AdamStore.entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@Builder
@Entity
@Table(name = "wards")
@NoArgsConstructor
@AllArgsConstructor
public class Ward {
    @Id
    private String code;

    private String name;

    private Integer districtId;
}
