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
public enum DistrictSocTrangEnum {

    SOC_TRANG("Thành phố Sóc Trăng"),
    BAC_AI("Huyện Bắc Ái"),
    DONG_HAI("Huyện Đông Hải"),
    LONG_PHU("Huyện Long Phú"),
    HONG_NGAI("Huyện Hồng Ngãi"),
    TRUONG_TINH("Huyện Trường Tình"),
    MY_XUAN("Huyện Mỹ Xuân");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.SOC_TRANG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictSocTrangEnum.values())
                .map(DistrictSocTrangEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
