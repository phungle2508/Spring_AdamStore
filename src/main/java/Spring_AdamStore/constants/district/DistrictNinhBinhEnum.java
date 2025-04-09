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
public enum DistrictNinhBinhEnum implements DistrictEnum{

    NINH_BINH("Thành phố Ninh Bình"),
    TAM_DIỆP("Thị xã Tam Điệp"),
    YEN_KHÁNH("Huyện Yên Khánh"),
    YEN_MO("Huyện Yên Mô"),
    KHÁNH_ĐỒNG("Huyện Khánh Dương"),
    HOA_LƯ("Huyện Hoa Lư"),
    LẬP_THÀNH("Huyện Lập Thành");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
