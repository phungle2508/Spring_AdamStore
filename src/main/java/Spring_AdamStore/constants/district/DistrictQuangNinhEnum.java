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
public enum DistrictQuangNinhEnum implements DistrictEnum{

    HA_LONG("Thành phố Hạ Long"),
    CAM_PHA("Thành phố Cẩm Phả"),
    UONG_BI("Thị xã Uông Bí"),
    MONG_CAI("Thành phố Móng Cái"),
    QUAN_LAM("Huyện Quảng Yên"),
    VAI_BAO("Huyện Vạn Linh"),
    DOC_XUONG("Huyện Đông Triều");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
