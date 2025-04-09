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
public enum DistrictDakNongEnum implements DistrictEnum{

    GIA_NGHIA("Thành phố Gia Nghĩa"),
    CU_JUT("Huyện Cư Jút"),
    DAK_MIL("Huyện Đắk Mil"),
    DAK_RLAP("Huyện Đắk R'lấp"),
    DAK_SONG("Huyện Đắk Song"),
    DAK_GLONG("Huyện Đắk Glong"),
    KRONG_NO("Huyện Krông Nô"),
    TUY_DUC("Huyện Tuy Đức");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
