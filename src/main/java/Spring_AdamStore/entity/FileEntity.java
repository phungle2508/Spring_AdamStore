package Spring_AdamStore.entity;

import Spring_AdamStore.constants.FileType;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;


@Getter
@Setter
@Table(name = "files")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class FileEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String publicId;
    private String fileName;
    private String imageUrl;

    @Enumerated(EnumType.STRING)
    private FileType fileType;


}
