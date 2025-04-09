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
public enum DistrictNinhThuanEnum implements DistrictEnum{

    PHAN_RANG("Thành phố Phan Rang-Tháp Chàm"),
    NINH_HAI("Huyện Ninh Hải"),
    NINH_PHUOC("Huyện Ninh Phước"),
    THUAN_HAI("Huyện Thuận Hải"),
    HAI_HAI("Huyện Hải Hải"),
    BA_HIỆU("Huyện Ba Hiệu");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
