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
public enum DistrictPhuYenEnum {

    TUY_HOA("Thành phố Tuy Hòa"),
    SÔNG_CÔNG("Thị xã Sông Cầu"),
    PHU_YEN("Huyện Phú Yên"),
    DONG_HOA("Huyện Đông Hòa"),
    HOAI_HAI("Huyện Hòa Hiệp"),
    CÁC_KHÁM("Huyện Các Khám");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.PHU_YEN.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictPhuYenEnum.values())
                .map(DistrictPhuYenEnum::toDistrict)
                .collect(Collectors.toList());
    }
}

