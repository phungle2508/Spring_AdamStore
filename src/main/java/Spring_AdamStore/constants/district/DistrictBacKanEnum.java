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
public enum DistrictBacKanEnum {

    BAC_KAN("Thành phố Bắc Kạn"),
    BA_BE("Huyện Ba Bể"),
    NGAN_SON("Huyện Ngân Sơn"),
    PAC_NAM("Huyện Pác Nặm"),
    CHO_DON("Huyện Chợ Đồn"),
    CHO_MOI("Huyện Chợ Mới"),
    NA_RI("Huyện Na Rì"),
    BACH_THONG("Huyện Bạch Thông");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.BAC_KAN.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictBacKanEnum.values())
                .map(DistrictBacKanEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
