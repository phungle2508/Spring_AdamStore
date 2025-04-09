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
public enum DistrictThanhHoaEnum implements DistrictEnum{

    THANH_HOA("Thành phố Thanh Hóa"),
    SAM_SON("Thành phố Sầm Sơn"),
    BA_THUOC("Huyện Bá Thước"),
    CAM_THUY("Huyện Cẩm Thủy"),
    DONG_SON("Huyện Đông Sơn"),
    HAU_LOC("Huyện Hậu Lộc"),
    HOANG_HOA("Huyện Hoằng Hóa"),
    LANG_CHANH("Huyện Lang Chánh"),
    MUONG_LAT("Huyện Mường Lát"),
    NGA_SON("Huyện Nga Sơn"),
    NGOC_LAC("Huyện Ngọc Lặc"),
    NHU_THANH("Huyện Như Thanh"),
    NHU_XUAN("Huyện Như Xuân"),
    QUAN_HOA("Huyện Quan Hóa"),
    QUAN_SON("Huyện Quan Sơn"),
    THACH_THANH("Huyện Thạch Thành"),
    THIEU_HOA("Huyện Thiệu Hóa"),
    THO_XUAN("Huyện Thọ Xuân"),
    TINH_GIA("Huyện Tĩnh Gia"),
    TRIEU_SON("Huyện Triệu Sơn"),
    VINH_LOC("Huyện Vĩnh Lộc"),
    YEN_DINH("Huyện Yên Định"),
    YEN_KHANH("Huyện Yên Khánh");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}

