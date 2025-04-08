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
public enum DistrictHoaBinhEnum {

    HOA_BINH("Thành phố Hòa Bình"),
    LUONG_SON("Huyện Lương Sơn"),
    KY_SU("Huyện Kỳ Sơn"),
    TAN_LAC("Huyện Tân Lạc"),
    MAI_CHAU("Huyện Mai Châu"),
    PHU_CUONG("Huyện Phú Cường"),
    LAC_THUY("Huyện Lạc Thủy"),
    YEN_THUAN("Huyện Yên Thủy"),
    DA_BAC("Huyện Đà Bắc"),
    CHI_LA("Huyện Chi Lã");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.HOA_BINH.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHoaBinhEnum.values())
                .map(DistrictHoaBinhEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
