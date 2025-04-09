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
public enum DistrictBaRiaVungTauEnum implements DistrictEnum {

    VUNG_TAU("Thành phố Vũng Tàu"),
    BA_RIA("Thành phố Bà Rịa"),

    PHU_MY("Thị xã Phú Mỹ"),

    CHAU_DUC("Huyện Châu Đức"),
    DAT_DO("Huyện Đất Đỏ"),
    LONG_DIEN("Huyện Long Điền"),
    XUYEN_MOC("Huyện Xuyên Mộc"),
    CON_DAO("Huyện Côn Đảo");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}