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
public enum DistrictBacLieuEnum implements DistrictEnum {

    BAC_LIEU("Thành phố Bạc Liêu"),
    GIA_RAI("Thị xã Giá Rai"),
    HOA_BINH("Huyện Hòa Bình"),
    HONG_DAN("Huyện Hồng Dân"),
    PHUOC_LONG("Huyện Phước Long"),
    DONG_HAI("Huyện Đông Hải"),
    VINH_LOI("Huyện Vĩnh Lợi");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
