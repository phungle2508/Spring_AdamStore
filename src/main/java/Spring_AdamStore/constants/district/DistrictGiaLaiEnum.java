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
public enum DistrictGiaLaiEnum {

    PLEIKU("Thành phố Pleiku"),
    AN_KHE("Thị xã An Khê"),
    AYUN_PA("Thị xã Ayun Pa"),
    CHU_PAH("Huyện Chư Păh"),
    CHU_PRONG("Huyện Chư Prông"),
    CHU_PU("Huyện Chư Pưh"),
    CHU_SE("Huyện Chư Sê"),
    DAK_DOA("Huyện Đắk Đoa"),
    DAK_PO("Huyện Đắk Pơ"),
    DUC_CO("Huyện Đức Cơ"),
    IA_GRAI("Huyện Ia Grai"),
    IA_H_DRAI("Huyện Ia H'Drai"),
    IA_PA("Huyện Ia Pa"),
    KBANG("Huyện Kbang"),
    KONG_CHRO("Huyện Kong Chro"),
    KRONG_PA("Huyện Krông Pa"),
    MANG_YANG("Huyện Mang Yang"),
    PHU_THIEN("Huyện Phú Thiện");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.GIA_LAI.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictGiaLaiEnum.values())
                .map(DistrictGiaLaiEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
