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
public enum DistrictLaoCaiEnum implements DistrictEnum{

    LAO_CAI("Thành phố Lào Cai"),
    SA_PA("Huyện Sa Pa"),
    BAT_XAT("Huyện Bát Xát"),
    MUONG_KHUONG("Huyện Mường Khương"),
    SINH_HO("Huyện Si Ma Cai"),
    BAC_HA("Huyện Bắc Hà"),
    THANH_BINH("Huyện Thạch Bình"),
    VAN_BAN("Huyện Văn Bàn");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
