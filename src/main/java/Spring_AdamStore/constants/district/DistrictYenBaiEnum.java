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
public enum DistrictYenBaiEnum {

    YEN_BAI("Thành phố Yên Bái"),
    NGHIA_LO("Thị xã Nghĩa Lộ"),
    VAN_CHAN("Huyện Văn Chấn"),
    VAN_YEN("Huyện Văn Yên"),
    TRAN_YEN("Huyện Trấn Yên"),
    LUC_YEN("Huyện Lục Yên"),
    YEN_BINH("Huyện Yên Bình"),
    MU_CANG_CHAI("Huyện Mù Cang Chải"),
    TRAM_TAU("Huyện Trạm Tấu"),
    DAI_MINH("Huyện Đại Minh");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.YEN_BAI.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictYenBaiEnum.values())
                .map(DistrictYenBaiEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
