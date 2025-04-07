package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;

public enum DistrictAnGiangEnum {

    LONG_XUYEN("Thành phố Long Xuyên", ProvinceEnum.AN_GIANG),
    CHAU_DOC("Thành phố Châu Đốc", ProvinceEnum.AN_GIANG),

    // Thị xã
    TAN_CHAU("Thị xã Tân Châu", ProvinceEnum.AN_GIANG),

    // Huyện
    AN_PHU("Huyện An Phú", ProvinceEnum.AN_GIANG),
    TAN_PHU("Huyện Tân Phú", ProvinceEnum.AN_GIANG),
    PHU_TAN("Huyện Phú Tân", ProvinceEnum.AN_GIANG),
    CHAU_PHU("Huyện Châu Phú", ProvinceEnum.AN_GIANG),
    CHAU_THANH("Huyện Châu Thành", ProvinceEnum.AN_GIANG),
    CHO_MOI("Huyện Chợ Mới", ProvinceEnum.AN_GIANG),
    THOAI_SON("Huyện Thoại Sơn", ProvinceEnum.AN_GIANG),
    TRI_TON("Huyện Tri Tôn", ProvinceEnum.AN_GIANG);

    private final String name;
    private final ProvinceEnum province;

    DistrictAnGiangEnum(String name, ProvinceEnum province) {
        this.name = name;
        this.province = province;
    }
}
