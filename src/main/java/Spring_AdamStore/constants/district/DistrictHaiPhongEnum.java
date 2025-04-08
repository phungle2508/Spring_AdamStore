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
public enum DistrictHaiPhongEnum {

    HAI_PHONG("Thành phố Hải Phòng"),
    NGO_QUYEN("Quận Ngô Quyền"),
    LE_CHI("Quận Lê Chân"),
    HAI_AN("Quận Hải An"),
    KINH_BAC("Quận Kiến An"),
    DUONG_KINH("Quận Dương Kinh"),
    CAT_BA("Quận Cát Hải"),
    KIEU_HAI("Quận Kiều Hai"),
    AN_DUONG("Huyện An Dương"),
    AN_LAO("Huyện An Lão"),
    BA_MAT("Huyện Ba Mặt"),
    TAN_HAI("Huyện Tân Hải");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.HAI_PHONG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHaiPhongEnum.values())
                .map(DistrictHaiPhongEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
