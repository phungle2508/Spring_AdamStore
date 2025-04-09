package Spring_AdamStore.constants.district;

import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;


@Getter
@AllArgsConstructor
public enum DistrictKonTumEnum implements DistrictEnum{

    KON_TUM("Thành phố Kon Tum"),
    KON_PLONG("Huyện Kon Plông"),
    KON_RAY("Huyện Kon Rẫy"),
    DAK_GLEI("Huyện Đắk Glei"),
    DAK_HA("Huyện Đắk Hà"),
    DAK_TO("Huyện Đắk Tô"),
    IA_HDRAI("Huyện Ia H'Drai"),
    NGOC_HOI("Huyện Ngọc Hồi"),
    SA_THAY("Huyện Sa Thầy"),
    TU_MO_RONG("Huyện Tu Mơ Rông");


    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
