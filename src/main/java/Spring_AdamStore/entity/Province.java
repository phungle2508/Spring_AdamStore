package Spring_AdamStore.entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@Builder
@Entity
@Table(name = "provinces")
@NoArgsConstructor
@AllArgsConstructor
public class Province {

    @Id
    private Integer id;
    private String name;


}
