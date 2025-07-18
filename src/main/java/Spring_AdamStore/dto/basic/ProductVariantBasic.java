package Spring_AdamStore.dto.basic;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductVariantBasic {

    private Long id;

    private String imageUrl;
    private EntityBasic color;
    private EntityBasic size;
    private EntityBasic product;
}
