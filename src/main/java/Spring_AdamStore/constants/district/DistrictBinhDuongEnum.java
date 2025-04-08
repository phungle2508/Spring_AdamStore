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
public enum DistrictBinhDuongEnum {

    THU_DAU_MOT("Thành phố Thủ Dầu Một"),
    DI_AN("Thành phố Dĩ An"),
    THUAN_AN("Thành phố Thuận An"),

    TAN_UYEN("Thị xã Tân Uyên"),
    BEN_CAT("Thị xã Bến Cát"),

    BAC_TAN_UYEN("Huyện Bắc Tân Uyên"),
    BAU_BANG("Huyện Bàu Bàng"),
    PHU_GIAO("Huyện Phú Giáo"),
    DAU_TIENG("Huyện Dầu Tiếng");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.BINH_DUONG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictBinhDuongEnum.values())
                .map(DistrictBinhDuongEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
