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
public enum DistrictBacGiangEnum {

    BAC_GIANG("Thành phố Bắc Giang"),
    HIEP_HOA("Huyện Hiệp Hòa"),
    TAN_YEN("Huyện Tân Yên"),
    YEN_THE("Huyện Yên Thế"),
    LANG_GIANG("Huyện Lạng Giang"),
    LUC_NAM("Huyện Lục Nam"),
    LUC_NGAN("Huyện Lục Ngạn"),
    SON_DONG("Huyện Sơn Động"),
    VIET_YEN("Huyện Việt Yên"),
    YEN_DUNG("Huyện Yên Dũng");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.BAC_GIANG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictBacGiangEnum.values())
                .map(DistrictBacGiangEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
