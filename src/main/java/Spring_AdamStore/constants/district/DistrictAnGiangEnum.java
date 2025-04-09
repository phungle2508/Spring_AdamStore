package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum DistrictAnGiangEnum implements DistrictEnum {

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
                .build();
    }

}
