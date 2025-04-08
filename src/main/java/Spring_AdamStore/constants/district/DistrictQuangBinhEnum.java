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
public enum DistrictQuangBinhEnum {

    DONG_HOI("Thành phố Đồng Hới"),
    BA_DON("Thị xã Ba Đồn"),
    QUAN_HOAI("Huyện Quảng Ninh"),
    PHU_XUAN("Huyện Phú Hóa"),
    QUANG_LINH("Huyện Quảng Linh"),
    QUY_PHU("Huyện Quy Phu"),
    TIEN_HOA("Huyện Tiên Hóa");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .province(ProvinceEnum.QUANG_BINH.toProvince())
                .build();
    }

    public static List<District> getAllDistricts() {
        return Arrays.stream(DistrictQuangBinhEnum.values())
                .map(DistrictQuangBinhEnum::toDistrict)
                .collect(Collectors.toList());
    }
}

