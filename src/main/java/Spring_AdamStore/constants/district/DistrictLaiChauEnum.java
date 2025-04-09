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
public enum DistrictLaiChauEnum implements DistrictEnum{

    LAI_CHAU("Thành phố Lai Châu"),
    TAM_DUONG("Huyện Tam Đường"),
    THANH_XUAN("Huyện Thanh Xuân"),
    PHU_LU("Huyện Phù Lu"),
    MUONG_TA("Huyện Mường Tà"),
    THANH_HOAI("Huyện Thanh Hòa"),
    PHU_KHANH("Huyện Phù Khánh"),
    KHOA_PAI("Huyện Khoa Pai"),
    SINH_KHEN("Huyện Sinh Khen");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
