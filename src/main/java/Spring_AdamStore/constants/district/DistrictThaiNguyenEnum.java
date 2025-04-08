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
public enum DistrictThaiNguyenEnum {

    THAI_NGUYEN("Thành phố Thái Nguyên"),
    PHU_BH("Huyện Phú Bình"),
    PHU_LINH("Huyện Phú Lương"),
    DONG_HAO("Huyện Đồng Hảo"),
    VA_RI("Huyện Vạ Rí");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.THAI_NGUYEN.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictThaiNguyenEnum.values())
                .map(DistrictThaiNguyenEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
