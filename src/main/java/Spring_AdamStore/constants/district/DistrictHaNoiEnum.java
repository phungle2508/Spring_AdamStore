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
public enum DistrictHaNoiEnum {

    // Quan
    BA_DINH("Quận Ba Đình"),
    HOAN_KIEM("Quận Hoàn Kiếm"),
    TAY_HO("Quận Tây Hồ"),
    LONG_BIEN("Quận Long Biên"),
    CAU_GIAY("Quận Cầu Giấy"),
    DONG_DA("Quận Đống Đa"),
    HAI_BA_TRUNG("Quận Hai Bà Trưng"),
    HOANG_MAI("Quận Hoàng Mai"),
    THANH_XUAN("Quận Thanh Xuân"),
    NAM_TU_LIEM("Quận Nam Từ Liêm"),
    BAC_TU_LIEM("Quận Bắc Từ Liêm"),
    HA_DONG("Quận Hà Đông"),

    // Thi xa
    SON_TAY("Thị xã Sơn Tây"),

    // Huyen
    SOC_SON("Huyện Sóc Sơn"),
    DONG_ANH("Huyện Đông Anh"),
    GIA_LAM("Huyện Gia Lâm"),
    THANH_TRI("Huyện Thanh Trì"),
    ME_LINH("Huyện Mê Linh"),
    BA_VI("Huyện Ba Vì"),
    PHUC_THO("Huyện Phúc Thọ"),
    DAN_PHUONG("Huyện Đan Phượng"),
    HOAI_DUC("Huyện Hoài Đức"),
    QUOC_OAI("Huyện Quốc Oai"),
    THACH_THAT("Huyện Thạch Thất"),
    CHUONG_MY("Huyện Chương Mỹ"),
    THANH_OAI("Huyện Thanh Oai"),
    THUONG_TIN("Huyện Thường Tín"),
    PHU_XUYEN("Huyện Phú Xuyên"),
    UNG_HOA("Huyện Ứng Hòa"),
    MY_DUC("Huyện Mỹ Đức");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.HA_NOI.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictHaNoiEnum.values())
                .map(DistrictHaNoiEnum::toDistrict)
                .collect(Collectors.toList());
    }
}