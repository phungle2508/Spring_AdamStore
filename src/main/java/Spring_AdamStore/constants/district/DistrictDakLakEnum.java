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
public enum DistrictDakLakEnum implements DistrictEnum{

    BUON_MA_THUOT("Thành phố Buôn Ma Thuột"),
    BUON_HO("Thị xã Buôn Hồ"),
    CU_KUIN("Huyện Cư Kuin"),
    KRONG_BUK("Huyện Krông Búk"),
    EA_HLEO("Huyện Ea H'leo"),
    KRONG_NANG("Huyện Krông Năng"),
    EA_KAR("Huyện Ea Kar"),
    M_DRAK("Huyện M'Đrắk"),
    KRONG_PAK("Huyện Krông Pắc"),
    KRONG_ANA("Huyện Krông Ana"),
    BUON_DON("Huyện Buôn Đôn"),
    CU_MGAR("Huyện Cư M'gar"),
    LAK("Huyện Lắk");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}