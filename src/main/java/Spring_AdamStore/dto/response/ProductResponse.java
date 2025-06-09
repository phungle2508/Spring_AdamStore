package Spring_AdamStore.dto.response;


import Spring_AdamStore.constants.EntityStatus;
import Spring_AdamStore.dto.basic.EntityBasic;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;
import java.util.Set;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductResponse {

    private Long id;

    private Boolean isAvailable;
    private String name;
    private String description;

    private Double averageRating;
    private Integer soldQuantity;
    private Integer totalReviews;
    private Integer quantity;
    private Double price;

    private EntityStatus status;

    private String createdBy;
    private String updatedBy;
    private LocalDate createdAt;
    private LocalDate updatedAt;

    private Set<EntityBasic> colors;
    private Set<EntityBasic> sizes;

    private Set<FileResponse> images;


}
