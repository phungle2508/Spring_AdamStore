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
public enum DistrictBenTreEnum {

    BEN_TRE("Thành phố Bến Tre"),
    BA_TRI("Huyện Ba Tri"),
    BINH_DAI("Huyện Bình Đại"),
    CHAU_THANH("Huyện Châu Thành"),
    CHO_LACH("Huyện Chợ Lách"),
    GIONG_TROM("Huyện Giồng Trôm"),
    MO_CAY_BAC("Huyện Mỏ Cày Bắc"),
    MO_CAY_NAM("Huyện Mỏ Cày Nam"),
    THANH_PHO("Huyện Thạnh Phú");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.BEN_TRE.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictBenTreEnum.values())
                .map(DistrictBenTreEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
