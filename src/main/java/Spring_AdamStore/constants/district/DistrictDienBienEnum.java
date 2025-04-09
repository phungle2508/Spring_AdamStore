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
public enum DistrictDienBienEnum implements DistrictEnum{

    DIEN_BIEN_PHU("Thành phố Điện Biên Phủ"),
    MUONG_LAY("Thị xã Mường Lay"),
    DIEN_BIEN("Huyện Điện Biên"),
    DIEN_BIEN_DONG("Huyện Điện Biên Đông"),
    MUONG_ANG("Huyện Mường Ảng"),
    MUONG_CHA("Huyện Mường Chà"),
    NAM_PO("Huyện Nậm Pồ"),
    TUA_CHUA("Huyện Tủa Chùa"),
    TUA_NUA("Huyện Tuần Giáo");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
