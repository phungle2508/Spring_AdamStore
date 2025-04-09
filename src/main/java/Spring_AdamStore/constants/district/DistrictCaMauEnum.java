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
public enum DistrictCaMauEnum implements DistrictEnum{

    CA_MAU("Thành phố Cà Mau"),
    THOI_BINH("Huyện Thới Bình"),
    TRAN_VAN_THOI("Huyện Trần Văn Thời"),
    U_MINH("Huyện U Minh"),
    CAI_NUOC("Huyện Cái Nước"),
    NAM_CAN("Huyện Năm Căn"),
    NGOC_HIEN("Huyện Ngọc Hiển"),
    DAM_DOI("Huyện Đầm Dơi"),
    PHU_TAN("Huyện Phú Tân");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
