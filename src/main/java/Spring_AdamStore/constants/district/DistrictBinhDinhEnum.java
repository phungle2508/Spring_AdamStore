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
public enum DistrictBinhDinhEnum {

    QUY_NHON("Thành phố Quy Nhơn"),
    AN_NHON("Thị xã An Nhơn"),
    HOAI_NHON("Thị xã Hoài Nhơn"),
    TUY_PHUOC("Huyện Tuy Phước"),
    PHU_MY("Huyện Phù Mỹ"),
    PHU_CAT("Huyện Phù Cát"),
    VAN_CANH("Huyện Vân Canh"),
    TAY_SON("Huyện Tây Sơn"),
    VINH_THANH("Huyện Vĩnh Thạnh"),
    AN_LAO("Huyện An Lão"),
    HOAI_AN("Huyện Hoài Ân");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.BINH_DINH.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictBinhDinhEnum.values())
                .map(DistrictBinhDinhEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
