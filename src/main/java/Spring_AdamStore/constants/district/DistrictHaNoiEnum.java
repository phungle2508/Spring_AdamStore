package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;

public enum DistrictHaNoiEnum {
    // Ha Noi
    BA_DINH("Ba Đình", ProvinceEnum.HA_NOI),
    HOAN_KIEM("Hoàn Kiếm", ProvinceEnum.HA_NOI),
    TAY_HO("Tây Hồ", ProvinceEnum.HA_NOI),
    LONG_BIEN("Long Biên", ProvinceEnum.HA_NOI),
    CAU_GIAY("Cầu Giấy", ProvinceEnum.HA_NOI),
    DONG_DA("Đống Đa", ProvinceEnum.HA_NOI),
    HAI_BA_TRUNG("Hai Bà Trưng", ProvinceEnum.HA_NOI),
    HOANG_MAI("Hoàng Mai", ProvinceEnum.HA_NOI),
    THANH_XUAN("Thanh Xuân", ProvinceEnum.HA_NOI),

    SOC_SON("Sóc Sơn", ProvinceEnum.HA_NOI),
    DONG_ANH("Đông Anh", ProvinceEnum.HA_NOI),
    GIA_LAM("Gia Lâm", ProvinceEnum.HA_NOI),
    NAM_TU_LIEM("Nam Từ Liêm", ProvinceEnum.HA_NOI),
    BAC_TU_LIEM("Bắc Từ Liêm", ProvinceEnum.HA_NOI),
    THANH_TRI("Thanh Trì", ProvinceEnum.HA_NOI),
    THANH_OAI("Thanh Oai", ProvinceEnum.HA_NOI),
    THACH_THAT("Thạch Thất", ProvinceEnum.HA_NOI),
    QUOC_OAI("Quốc Oai", ProvinceEnum.HA_NOI),
    CHUONG_MY("Chương Mỹ", ProvinceEnum.HA_NOI),
    HOAI_DUC("Hoài Đức", ProvinceEnum.HA_NOI),
    PHUC_THO("Phúc Thọ", ProvinceEnum.HA_NOI),
    DAN_PHUONG("Đan Phượng", ProvinceEnum.HA_NOI),
    MY_DUC("Mỹ Đức", ProvinceEnum.HA_NOI),
    UNG_HOA("Ứng Hòa", ProvinceEnum.HA_NOI),
    THUONG_TIN("Thường Tín", ProvinceEnum.HA_NOI),
    PHU_XUYEN("Phú Xuyên", ProvinceEnum.HA_NOI),
    BA_VI("Ba Vì", ProvinceEnum.HA_NOI),
    ME_LINH("Mê Linh", ProvinceEnum.HA_NOI),

    SON_TAY("Sơn Tây", ProvinceEnum.HA_NOI);

    private final String name;
    private final ProvinceEnum province;

    DistrictHaNoiEnum(String name, ProvinceEnum province) {
        this.name = name;
        this.province = province;
    }
}
