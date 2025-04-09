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
public enum DistrictBacNinhEnum implements DistrictEnum {

    BAC_NINH("Thành phố Bắc Ninh"),
    TU_SON("Thành phố Từ Sơn"),
    THUAN_THANH("Thị xã Thuận Thành"),
    QUE_VO("Huyện Quế Võ"),
    YEN_PHONG("Huyện Yên Phong"),
    TIEN_DU("Huyện Tiên Du"),
    GIA_BINH("Huyện Gia Bình"),
    LUONG_TAI("Huyện Lương Tài");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
