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
public enum DistrictQuangTriEnum {

    DONG_HA("Thành phố Đông Hà"),
    QUANG_TRI("Huyện Quảng Trị"),
    VIETLUA("Huyện Việt Lực"),
    HA_LANG("Huyện Hà Lăng"),
    AM_TUC("Huyện Âm Túc");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.QUANG_TRI.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictQuangTriEnum.values())
                .map(DistrictQuangTriEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
