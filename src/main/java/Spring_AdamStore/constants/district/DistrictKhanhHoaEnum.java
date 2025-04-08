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
public enum DistrictKhanhHoaEnum {

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
                .province(ProvinceEnum.KHANH_HOA.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictKhanhHoaEnum.values())
                .map(DistrictKhanhHoaEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
