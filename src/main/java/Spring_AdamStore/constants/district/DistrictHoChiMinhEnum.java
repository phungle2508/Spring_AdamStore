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
public enum DistrictHoChiMinhEnum {

    HO_CHI_MINH("Thành phố Hồ Chí Minh"),
    QUAN_1("Quận 1"),
    QUAN_2("Quận 2"),
    QUAN_3("Quận 3"),
    QUAN_4("Quận 4"),
    QUAN_5("Quận 5"),
    QUAN_6("Quận 6"),
    QUAN_7("Quận 7"),
    QUAN_8("Quận 8"),
    QUAN_9("Quận 9"),
    QUAN_10("Quận 10"),
    QUAN_11("Quận 11"),
    QUAN_12("Quận 12"),
    BINH_CHANH("Huyện Bình Chánh"),
    CU_CHI("Huyện Củ Chi"),
    HOC_MON("Huyện Hóc Môn"),
    NHA_BE("Huyện Nhà Bè"),
    BINH_TAN("Huyện Bình Tân");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.HO_CHI_MINH.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHoChiMinhEnum.values())
                .map(DistrictHoChiMinhEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
