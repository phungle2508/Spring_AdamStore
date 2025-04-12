package Spring_AdamStore.dto.basic;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductVariantBasic {

    Long id;

    String color;
    String size;
    String product;
    String imageUrl;
}
