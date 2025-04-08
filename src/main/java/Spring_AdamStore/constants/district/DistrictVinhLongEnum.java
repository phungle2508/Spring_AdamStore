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
public enum DistrictVinhLongEnum {

    VINH_LONG("Thành phố Vĩnh Long"),
    BINH_MINH("Thị xã Bình Minh"),
    LONG_HO("Huyện Long Hồ"),
    MANG_THIT("Huyện Mang Thít"),
    TAM_BINH("Huyện Tam Bình"),
    TRA_ON("Huyện Trà Ôn"),
    VUNG_LIEM("Huyện Vũng Liêm");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.VINH_LONG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictVinhLongEnum.values())
                .map(DistrictVinhLongEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
