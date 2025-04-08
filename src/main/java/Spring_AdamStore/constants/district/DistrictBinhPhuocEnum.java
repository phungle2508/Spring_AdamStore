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
public enum DistrictBinhPhuocEnum {

    DONG_XOAI("Thành phố Đồng Xoài"),

    PHUOC_LONG("Thị xã Phước Long"),
    BINH_LONG("Thị xã Bình Long"),

    BU_DOP("Huyện Bù Đốp"),
    BU_GIA_MAP("Huyện Bù Gia Mập"),
    BU_DANG("Huyện Bù Đăng"),
    DONG_PHU("Huyện Đồng Phú"),
    HON_QUAN("Huyện Hớn Quản"),
    LOC_NINH("Huyện Lộc Ninh"),
    CHON_THANH("Huyện Chơn Thành"),
    PHU_RIENG("Huyện Phú Riềng");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.BINH_PHUOC.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictBinhPhuocEnum.values())
                .map(DistrictBinhPhuocEnum::toDistrict)
                .collect(Collectors.toList());
    }
}
