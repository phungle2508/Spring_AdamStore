package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;


@Getter
@AllArgsConstructor
public enum DistrictLongAnEnum implements DistrictEnum{

    TAN_AN("Thành phố Tân An"),
    BEN_LUC("Huyện Bến Lức"),
    CAN_GIOC("Huyện Cần Giuộc"),
    CAN_DAU("Huyện Cần Đước"),
    DUY_TAN("Huyện Duy Tiên"),
    HONG_NGHE("Huyện Hồng Ngọc"),
    LOA("Huyện Loa Thành"),
    LONG_BAC("Huyện Long Bát");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
