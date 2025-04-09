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
public enum DistrictQuangTriEnum implements DistrictEnum{

    DONG_HA("Thành phố Đông Hà"),
    QUANG_TRI("Huyện Quảng Trị"),
    VIETLUA("Huyện Việt Lực"),
    HA_LANG("Huyện Hà Lăng"),
    AM_TUC("Huyện Âm Túc");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
