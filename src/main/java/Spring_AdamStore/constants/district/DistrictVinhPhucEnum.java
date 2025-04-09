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
public enum DistrictVinhPhucEnum implements DistrictEnum{

    VINH_YEN("Thành phố Vĩnh Yên"),
    PHUC_YEN("Thị xã Phúc Yên"),
    BINH_XUYEN("Huyện Bình Xuyên"),
    LAP_THACH("Huyện Lập Thạch"),
    TAM_DAO("Huyện Tam Đảo"),
    TAM_DUONG("Huyện Tam Dương"),
    VINH_TUONG("Huyện Vĩnh Tường"),
    SONG_LO("Huyện Sông Lô"),
    YEN_LAC("Huyện Yên Lạc"),
    ME_LINH("Huyện Mê Linh");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
