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
public enum DistrictKhanhHoaEnum implements DistrictEnum{

    NHA_TRANG("Thành phố Nha Trang"),
    CAM_RANH("Thành phố Cam Ranh"),
    CAM_LAM("Huyện Cam Lâm"),
    DIEN_KHANH("Huyện Diên Khánh"),
    KHANH_VINH("Huyện Khánh Vĩnh"),
    KHANH_SON("Huyện Khánh Sơn"),
    TRUONG_SA("Huyện Trường Sa");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
