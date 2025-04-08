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
public enum DistrictHaiDuongEnum {

    HAI_DUONG("Thành phố Hải Dương"),
    CHI_LINH("Huyện Chí Linh"),
    CAM_GIANG("Huyện Cẩm Giàng"),
    BINH_GIANG("Huyện Bình Giang"),
    GIA_LAM("Huyện Gia Lâm"),
    KIM_THANH("Huyện Kim Thành"),
    THANH_HAI("Huyện Thanh Hà"),
    LANG_GIANG("Huyện Lạng Giang"),
    HONG_GIANG("Huyện Hồng Bàng");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.HAI_DUONG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHaiDuongEnum.values())
                .map(DistrictHaiDuongEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
