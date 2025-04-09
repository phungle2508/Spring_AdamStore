package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@AllArgsConstructor
public enum DistrictBinhThuanEnum implements DistrictEnum{

    PHAN_THIET("Thành phố Phan Thiết"),

    LA_GI("Thị xã La Gi"),

    BAC_BINH("Huyện Bắc Bình"),
    DUC_LINH("Huyện Đức Linh"),
    HAM_THUAN_BAC("Huyện Hàm Thuận Bắc"),
    HAM_THUAN_NAM("Huyện Hàm Thuận Nam"),
    HAM_TAN("Huyện Hàm Tân"),
    PHU_QUY("Huyện Phú Quý"),
    TUY_PHONG("Huyện Tuy Phong");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
