package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@AllArgsConstructor
public enum DistrictHungYenEnum implements DistrictEnum{

    HUNG_YEN("Thành phố Hưng Yên"),
    MY_HAO("Thị xã Mỹ Hào"),
    AN_THI("Huyện Ân Thi"),
    HOI_UNG("Huyện Hồi Úng"),
    PHU_CUNG("Huyện Phú Cường"),
    TIEN_HUNG("Huyện Tiền Hưng"),
    LAM_THE("Huyện Lâm Tư");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
