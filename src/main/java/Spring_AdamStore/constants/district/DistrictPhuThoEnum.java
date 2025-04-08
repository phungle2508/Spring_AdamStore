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
public enum DistrictPhuThoEnum {

    VIET_TRI("Thành phố Việt Trì"),
    PHU_NGHE("Huyện Phù Ninh"),
    LUONG_SON("Huyện Lương Sơn"),
    HAO_QUANG("Huyện Hào Quang"),
    VUNG_TAU("Huyện Vũng Tàu");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.PHU_THO.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictPhuThoEnum.values())
                .map(DistrictPhuThoEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
