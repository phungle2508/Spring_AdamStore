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
public enum DistrictKienGiangEnum implements DistrictEnum{

    RACH_GIA("Thành phố Rạch Giá"),
    HA_TIEN("Thị xã Hà Tiên"),
    AN_BIEN("Huyện An Biên"),
    AN_HOAI("Huyện An Hoài"),
    CHAU_THANH("Huyện Châu Thành"),
    KIEN_LANG("Huyện Kiên Lương"),
    GIANG_TU("Huyện Giang Thành"),
    GIA_BIEN("Huyện Gia Biên"),
    LONG_MY("Huyện Long Mỹ");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }
}