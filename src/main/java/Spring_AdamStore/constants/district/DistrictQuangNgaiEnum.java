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
public enum DistrictQuangNgaiEnum {

    QUANG_NGAI("Thành phố Quảng Ngãi"),
    BINH_SON("Huyện Bình Sơn"),
    SA_CAH("Huyện Sa Cảnh"),
    DUONG_LAI("Huyện Dương Lái"),
    QUY_NHƠN("Huyện Quy Nhơn"),
    LO_DUC("Huyện Lý Sơn");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.QUANG_NGAI.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictQuangNgaiEnum.values())
                .map(DistrictQuangNgaiEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
