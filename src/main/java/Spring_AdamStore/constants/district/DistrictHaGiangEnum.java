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
public enum DistrictHaGiangEnum {

    HA_GIANG("Thành phố Hà Giang"),
    QUAN_BA("Huyện Quản Bạ"),
    YEN_MINH("Huyện Yên Minh"),
    VU_MAI("Huyện Vị Xuyên"),
    MEO_VAC("Huyện Mèo Vạc"),
    DONG_VA("Huyện Đồng Văn"),
    HOANG_SU_PHI("Huyện Hoàng Su Phì"),
    BAC_ME("Huyện Bắc Mê"),
    VIET_QUANG("Huyện Việt Quang");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.HA_GIANG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHaGiangEnum.values())
                .map(DistrictHaGiangEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
