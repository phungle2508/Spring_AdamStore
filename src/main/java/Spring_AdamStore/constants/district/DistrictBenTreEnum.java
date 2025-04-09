package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;


@Getter
@AllArgsConstructor
public enum DistrictBenTreEnum implements DistrictEnum{

    BEN_TRE("Thành phố Bến Tre"),
    BA_TRI("Huyện Ba Tri"),
    BINH_DAI("Huyện Bình Đại"),
    CHAU_THANH("Huyện Châu Thành"),
    CHO_LACH("Huyện Chợ Lách"),
    GIONG_TROM("Huyện Giồng Trôm"),
    MO_CAY_BAC("Huyện Mỏ Cày Bắc"),
    MO_CAY_NAM("Huyện Mỏ Cày Nam"),
    THANH_PHO("Huyện Thạnh Phú");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
