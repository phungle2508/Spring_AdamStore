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
public enum DistrictDaNangEnum implements DistrictEnum{

    HAI_CHAU("Quận Hải Châu"),
    THANH_KHE("Quận Thanh Khê"),
    SON_TRA("Quận Sơn Trà"),
    NGU_HANH_SON("Quận Ngũ Hành Sơn"),
    LIEN_CHIEU("Quận Liên Chiểu"),
    CAM_LE("Quận Cẩm Lệ"),
    HOA_VANG("Huyện Hòa Vang"),
    HOANG_SA("Huyện Hoàng Sa");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
