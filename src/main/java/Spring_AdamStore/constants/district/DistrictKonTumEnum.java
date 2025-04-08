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
public enum DistrictKonTumEnum {

    KON_TUM("Thành phố Kon Tum"),
    KON_PLONG("Huyện Kon Plông"),
    KON_CHOANG("Huyện Kon Chro"),
    KON_HOA("Huyện Kon Hoa"),
    KON_BA("Huyện Kon Ba"),
    DAK_GLEI("Huyện Đắk Glei"),
    DAK_TO("Huyện Đắk Tô"),
    DAK_PO("Huyện Đắk Pơ"),
    TAN_HA("Huyện Tân Hạ");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.KON_TUM.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictKonTumEnum.values())
                .map(DistrictKonTumEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
