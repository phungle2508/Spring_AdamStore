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
public enum DistrictTayNinhEnum implements DistrictEnum{

    TAY_NINH("Thành phố Tây Ninh"),
    HOA_THANH("Huyện Hoà Thành"),
    TAN_CHAU("Huyện Tân Châu"),
    DUONG_MINH("Huyện Dương Minh"),
    BEN_CAU("Huyện Bến Cầu"),
    CHAU_THANH("Huyện Châu Thành"),
    GO_DAU("Huyện Gò Dầu"),
    TAY_BAC("Huyện Tây Bắc");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
