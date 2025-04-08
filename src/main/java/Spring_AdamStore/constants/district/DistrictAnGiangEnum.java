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
public enum DistrictAnGiangEnum {

    LONG_XUYEN("Thành phố Long Xuyên"),
    CHAU_DOC("Thành phố Châu Đốc"),

    TAN_CHAU("Thị xã Tân Châu"),

    AN_PHU("Huyện An Phú"),
    PHU_TAN("Huyện Phú Tân"),
    CHAU_PHU("Huyện Châu Phú"),
    CHAU_THANH("Huyện Châu Thành"),
    THOAI_SON("Huyện Thoại Sơn"),
    TRI_TON("Huyện Tri Tôn"),
    TINH_BIEN("Huyện Tịnh Biên"),
    CHO_MOI("Huyện Chợ Mới");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.AN_GIANG.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictAnGiangEnum.values())
                .map(DistrictAnGiangEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
