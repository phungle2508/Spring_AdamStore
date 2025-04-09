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
public enum DistrictThaiBinhEnum implements DistrictEnum{

    THAI_BINH("Thành phố Thái Bình"),
    HAI_HOA("Huyện Hải Hòa"),
    QUAN_LI("Huyện Quân Lý"),
    PHU_XUAN("Huyện Phú Xuân"),
    DAI_LY("Huyện Đại Lý"),
    TAM_TU("Huyện Tam Tư");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
