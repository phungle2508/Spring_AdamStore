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
public enum DistrictNgheAnEnum {

    VINH("Thành phố Vinh"),
    CUA_LO("Thị xã Cửa Lò"),
    THO_XUAN("Huyện Thọ Xuân"),
    CAMXUAN("Huyện Cẩm Xuân"),
    THU_DO("Huyện Thu Đo"),
    THANH_HOA("Huyện Thanh Hóa");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.NGHE_AN.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictNgheAnEnum.values())
                .map(DistrictNgheAnEnum::toDistrict)
                .collect(Collectors.toList());
    }
}

