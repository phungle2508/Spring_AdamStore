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
public enum DistrictNamDinhEnum implements DistrictEnum{

    NAM_DINH("Thành phố Nam Định"),
    MY_LA("Huyện Mỹ Lộc"),
    TRINH_NGIA("Huyện Trình Gia"),
    BA_CAI("Huyện Ba Cai"),
    NAM_SONG("Huyện Nam Sông"),
    PHE_MAI("Huyện Phê Mai");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
