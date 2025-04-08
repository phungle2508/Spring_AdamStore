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
public enum DistrictCaoBangEnum {

    CAO_BANG("Thành phố Cao Bằng"),
    HOA_AN("Huyện Hòa An"),
    BAO_LAC("Huyện Bảo Lạc"),
    BAO_LAM("Huyện Bảo Lâm"),
    HA_LANG("Huyện Hạ Lang"),
    HA_QUANG("Huyện Hà Quảng"),
    NGUYET_HOA("Huyện Nguyên Bình"),
    PHUC_HOA("Huyện Phục Hòa"),
    QUANG_HOA("Huyện Quảng Hòa"),
    THACH_AN("Huyện Thạch An"),
    TRUNG_KHANH("Huyện Trùng Khánh");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.CAO_BANG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictCaoBangEnum.values())
                .map(DistrictCaoBangEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
