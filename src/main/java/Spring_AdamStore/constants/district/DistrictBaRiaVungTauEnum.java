package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;

public enum DistrictBaRiaVungTauEnum {
    VUNG_TAU("Thành phố Vũng Tàu", ProvinceEnum.BA_RIA_VUNG_TAU),
    BA_RIA("Thành phố Bà Rịa", ProvinceEnum.BA_RIA_VUNG_TAU),

    // Thị xã
    PHU_MY("Thị xã Phú Mỹ", ProvinceEnum.BA_RIA_VUNG_TAU),

    // Huyện
    CHAU_DUC("Huyện Châu Đức", ProvinceEnum.BA_RIA_VUNG_TAU),
    DAT_DO("Huyện Đất Đỏ", ProvinceEnum.BA_RIA_VUNG_TAU),
    LONG_DIEN("Huyện Long Điền", ProvinceEnum.BA_RIA_VUNG_TAU),
    TAN_THANH("Huyện Tân Thành", ProvinceEnum.BA_RIA_VUNG_TAU), // trước đây là huyện, nay đã hợp vào Phú Mỹ
    XUYEN_MOC("Huyện Xuyên Mộc", ProvinceEnum.BA_RIA_VUNG_TAU),
    CON_DAO("Huyện Côn Đảo", ProvinceEnum.BA_RIA_VUNG_TAU);

    private final String name;
    private final ProvinceEnum province;

    DistrictBaRiaVungTauEnum(String name, ProvinceEnum province) {
        this.name = name;
        this.province = province;
    }
}
