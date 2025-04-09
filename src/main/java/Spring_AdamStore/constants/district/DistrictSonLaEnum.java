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
public enum DistrictSonLaEnum implements DistrictEnum{

    SON_LA("Thành phố Sơn La"),
    MAI_SON("Huyện Mai Sơn"),
    YEN_CHAU("Huyện Yên Châu"),
    MO_CAI("Huyện Mộc Châu"),
    QUY_MAI("Huyện Quỳ Mai"),
    PAI_LAO("Huyện Pái Lào");

    private final String name;

    public District toDistrict(){
        return District.builder()
                .name(this.name)
                .build();
    }

}