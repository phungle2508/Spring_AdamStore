package Spring_AdamStore.dto.response;


import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;
@FieldDefaults(level = AccessLevel.PRIVATE)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductResponse {

    Long id;
    String name;
    String description;
    Double price;
    Integer quantity;
    String imageUrl;

    LocalDate createdAt;
    LocalDate updatedAt;
}
