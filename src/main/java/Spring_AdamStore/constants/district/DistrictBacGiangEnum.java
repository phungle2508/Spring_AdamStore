package Spring_AdamStore.constants.district;

import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;


@Getter
@AllArgsConstructor
public enum DistrictBacGiangEnum implements DistrictEnum {

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
                .build();
    }
}
