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
public enum DistrictThaiNguyenEnum implements DistrictEnum{

    THAI_NGUYEN("Thành phố Thái Nguyên"),
    PHU_BH("Huyện Phú Bình"),
    PHU_LINH("Huyện Phú Lương"),
    DONG_HAO("Huyện Đồng Hảo"),
    VA_RI("Huyện Vạ Rí");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }
}
