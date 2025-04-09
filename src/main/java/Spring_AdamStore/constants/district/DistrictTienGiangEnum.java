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
public enum DistrictTienGiangEnum implements DistrictEnum{

    MY_THO("Thành phố Mỹ Tho"),
    GO_CONG("Thị xã Gò Công"),
    CHAU_THANH("Huyện Châu Thành"),
    TAN_PHU_DONG("Huyện Tân Phú Đông"),
    CAI_BE("Huyện Cái Bè"),
    CAI_LAY("Huyện Cai Lậy"),
    CHO_GAO("Huyện Chợ Gạo"),
    TAN_PHUOC("Huyện Tân Phước"),
    GO_CONG_TAY("Huyện Gò Công Tây"),
    GO_CONG_DONG("Huyện Gò Công Đông"),
    DAO_HANH("Huyện Đạo Hạnh"),
    LONG_MY("Huyện Long Mỹ");

    private final String name;

    public District toDistrict() {
        return District.builder()
                .name(this.name)
                .build();
    }

}
