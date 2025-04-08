package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.entity.District;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@AllArgsConstructor
public enum DistrictHungYenEnum {

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
                .province(ProvinceEnum.HUNG_YEN.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHungYenEnum.values())
                .map(DistrictHungYenEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
