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
public enum DistrictKienGiangEnum {

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
                .province(ProvinceEnum.KIEN_GIANG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictKienGiangEnum.values())
                .map(DistrictKienGiangEnum::toDistrict)
                .collect(Collectors.toList());
    }
}