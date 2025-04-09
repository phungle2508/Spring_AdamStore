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
public enum DistrictTuyenQuangEnum implements DistrictEnum{

    TUYEN_QUANG("Thành phố Tuyên Quang"),
    HA_GIANG("Thị xã Hà Giang"),
    SON_DUONG("Huyện Sơn Dương"),
    YEN_SON("Huyện Yên Sơn"),
    HAM_YEN("Huyện Hàm Yên"),
    CHIEM_HOA("Huyện Chiêm Hóa"),
    NA_HANG("Huyện Na Hang"),
    LAM_BINH("Huyện Lâm Bình"),
    TAN_TRAO("Huyện Tân Trào"),
    LUC_YEN("Huyện Lực Yên");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
