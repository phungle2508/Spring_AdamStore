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
public enum DistrictLamDongEnum {

    DA_LAT("Thành phố Đà Lạt"),
    BAO_LAM("Huyện Bảo Lâm"),
    DAK_GLONG("Huyện Đạ Tẻh"),
    DA_HOAI("Huyện Đạ Hoai"),
    LUAN_GIANG("Huyện Lâm Hà"),
    THAP_RANG("Huyện Tháp Răng"),
    PHU_LAC("Huyện Phú Lạc");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.LAM_DONG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictLamDongEnum.values())
                .map(DistrictLamDongEnum::toDistrict)
                .collect(Collectors.toList());
    }
}