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
public enum DistrictLangSonEnum implements DistrictEnum{

    LANG_SON("Thành phố Lạng Sơn"),
    CAO_LOC("Huyện Cao Lộc"),
    DONGKHE("Huyện Đông Khe"),
    PHU_LINH("Huyện Phú Linh"),
    DONGMAY("Huyện Đông May"),
    BAI("Huyện Bai");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
