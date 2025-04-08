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
public enum DistrictHauGiangEnum {

    VIETAI("Thành phố Vị Thanh"),
    NGA_BA("Thị xã Ngã Bảy"),
    CHAU_THANH("Huyện Châu Thành"),
    CHAU_THANH_A("Huyện Châu Thành A"),
    LONG_MY("Huyện Long Mỹ"),
    PHU_TAN("Huyện Phú Tân"),
    HOAI_AN("Huyện Hoài An");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.HAU_GIANG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHauGiangEnum.values())
                .map(DistrictHauGiangEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
