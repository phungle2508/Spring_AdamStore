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
public enum DistrictDongThapEnum {

    CAO_LANH("Thành phố Cao Lãnh"),
    SA_DEC("Thành phố Sa Đéc"),
    HONG_NGU("Thị xã Hồng Ngự"),
    CHAU_THANH("Huyện Châu Thành"),
    LAI_VUNG("Huyện Lai Vung"),
    LAP_VO("Huyện Lấp Vò"),
    TAM_NONG("Huyện Tam Nông"),
    TAN_HONG("Huyện Tân Hồng"),
    THANH_BINH("Huyện Thanh Bình"),
    THAP_MUOI("Huyện Tháp Mười"),
    CAO_LANH_HUYEN("Huyện Cao Lãnh"),
    HONG_NGU_HUYEN("Huyện Hồng Ngự");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.DONG_THAP.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictDongThapEnum.values())
                .map(DistrictDongThapEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
