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
public enum DistrictVinhLongEnum implements DistrictEnum{

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
                .build();
    }

}
