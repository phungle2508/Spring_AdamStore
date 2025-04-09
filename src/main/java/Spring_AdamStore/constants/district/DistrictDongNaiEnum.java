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
public enum DistrictDongNaiEnum implements DistrictEnum{

    BIEN_HOA("Thành phố Biên Hòa"),
    LONG_KHANH("Thành phố Long Khánh"),
    CAM_MY("Huyện Cẩm Mỹ"),
    Dinh_QUAN("Huyện Định Quán"),
    LONG_THANH("Huyện Long Thành"),
    NHON_TRACH("Huyện Nhơn Trạch"),
    TAN_PHU("Huyện Tân Phú"),
    THONG_NHAT("Huyện Thống Nhất"),
    TRANG_BOM("Huyện Trảng Bom"),
    Vinh_Cuu("Huyện Vĩnh Cửu"),
    XUAN_LOC("Huyện Xuân Lộc");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
