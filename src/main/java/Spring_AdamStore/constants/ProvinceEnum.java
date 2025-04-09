package Spring_AdamStore.constants;

import Spring_AdamStore.constants.district.*;
import Spring_AdamStore.entity.District;
import Spring_AdamStore.entity.Province;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Getter
@AllArgsConstructor
public enum ProvinceEnum {

    AN_GIANG("An Giang", Arrays.asList(DistrictAnGiangEnum.values())),
    BA_RIA_VUNG_TAU("Bà Rịa - Vũng Tàu", Arrays.asList(DistrictBaRiaVungTauEnum.values())),
    BAC_GIANG("Bắc Giang", Arrays.asList(DistrictBacGiangEnum.values())),
    BAC_KAN("Bắc Kạn", Arrays.asList(DistrictBacKanEnum.values())),
    BAC_LIEU("Bạc Liêu", Arrays.asList(DistrictBacLieuEnum.values())),
    BAC_NINH("Bắc Ninh",Arrays.asList(DistrictBacNinhEnum.values())),
    BEN_TRE("Bến Tre", Arrays.asList(DistrictBenTreEnum.values())),
    BINH_DINH("Bình Định", Arrays.asList(DistrictBinhDinhEnum.values())),
    BINH_DUONG("Bình Dương", Arrays.asList(DistrictBinhDuongEnum.values())),
    BINH_PHUOC("Bình Phước", Arrays.asList(DistrictBinhPhuocEnum.values())),
    BINH_THUAN("Bình Thuận", Arrays.asList(DistrictBinhThuanEnum.values())),
    CA_MAU("Cà Mau", Arrays.asList(DistrictCaMauEnum.values())),
    CAO_BANG("Cao Bằng", Arrays.asList(DistrictCaoBangEnum.values())),
    CAN_THO("Cần Thơ", Arrays.asList(DistrictCanThoEnum.values())),
    DA_NANG("Đà Nẵng", Arrays.asList(DistrictDaNangEnum.values())),
    DAK_LAK("Đắk Lắk", Arrays.asList(DistrictDakLakEnum.values())),
    DAK_NONG("Đắk Nông", Arrays.asList(DistrictDakNongEnum.values())),
    DIEN_BIEN("Điện Biên", Arrays.asList(DistrictDienBienEnum.values())),
    DONG_NAI("Đồng Nai", Arrays.asList(DistrictDongNaiEnum.values())),
    DONG_THAP("Đồng Tháp", Arrays.asList(DistrictDongThapEnum.values())),
    GIA_LAI("Gia Lai", Arrays.asList(DistrictGiaLaiEnum.values())),
    HA_GIANG("Hà Giang", Arrays.asList(DistrictHaGiangEnum.values())),
    HA_NAM("Hà Nam", Arrays.asList(DistrictHaNamEnum.values())),
    HA_NOI("Hà Nội", Arrays.asList(DistrictHaNoiEnum.values())),
    HA_TINH("Hà Tĩnh", Arrays.asList(DistrictHaTinhEnum.values())),
    HAI_DUONG("Hải Dương", Arrays.asList(DistrictHaiDuongEnum.values())),
    HAI_PHONG("Hải Phòng", Arrays.asList(DistrictHaiPhongEnum.values())),
    HAU_GIANG("Hậu Giang", Arrays.asList(DistrictHauGiangEnum.values())),
    HOA_BINH("Hòa Bình", Arrays.asList(DistrictHoaBinhEnum.values())),
    HUNG_YEN("Hưng Yên", Arrays.asList(DistrictHungYenEnum.values())),
    KHANH_HOA("Khánh Hòa", Arrays.asList(DistrictKhanhHoaEnum.values())),
    KIEN_GIANG("Kiên Giang", Arrays.asList(DistrictKienGiangEnum.values())),
    KON_TUM("Kon Tum", Arrays.asList(DistrictKonTumEnum.values())),
    LAI_CHAU("Lai Châu", Arrays.asList(DistrictLaiChauEnum.values())),
    LAM_DONG("Lâm Đồng", Arrays.asList(DistrictLamDongEnum.values())),
    LANG_SON("Lạng Sơn", Arrays.asList(DistrictLangSonEnum.values())),
    LAO_CAI("Lào Cai", Arrays.asList(DistrictLaoCaiEnum.values())),
    LONG_AN("Long An", Arrays.asList(DistrictLongAnEnum.values())),
    NAM_DINH("Nam Định", Arrays.asList(DistrictNamDinhEnum.values())),
    NGHE_AN("Nghệ An", Arrays.asList(DistrictNgheAnEnum.values())),
    NINH_BINH("Ninh Bình", Arrays.asList(DistrictNinhBinhEnum.values())),
    NINH_THUAN("Ninh Thuận", Arrays.asList(DistrictNinhThuanEnum.values())),
    PHU_THO("Phú Thọ", Arrays.asList(DistrictPhuThoEnum.values())),
    PHU_YEN("Phú Yên", Arrays.asList(DistrictPhuYenEnum.values())),
    QUANG_BINH("Quảng Bình", Arrays.asList(DistrictQuangBinhEnum.values())),
    QUANG_NAM("Quảng Nam", Arrays.asList(DistrictQuangNamEnum.values())),
    QUANG_NGAI("Quảng Ngãi", Arrays.asList(DistrictQuangNgaiEnum.values())),
    QUANG_NINH("Quảng Ninh", Arrays.asList(DistrictQuangNinhEnum.values())),
    QUANG_TRI("Quảng Trị", Arrays.asList(DistrictQuangTriEnum.values())),
    SOC_TRANG("Sóc Trăng", Arrays.asList(DistrictSocTrangEnum.values())),
    SON_LA("Sơn La", Arrays.asList(DistrictSonLaEnum.values())),
    TAY_NINH("Tây Ninh", Arrays.asList(DistrictTayNinhEnum.values())),
    THAI_BINH("Thái Bình", Arrays.asList(DistrictThaiBinhEnum.values())),
    THAI_NGUYEN("Thái Nguyên", Arrays.asList(DistrictThaiNguyenEnum.values())),
    THANH_HOA("Thanh Hóa", Arrays.asList(DistrictThanhHoaEnum.values())),
    THUA_THIEN_HUE("Thừa Thiên Huế", Arrays.asList(DistrictThuaThienHueEnum.values())),
    TIEN_GIANG("Tiền Giang", Arrays.asList(DistrictTienGiangEnum.values())),
    TRA_VINH("Trà Vinh", Arrays.asList(DistrictTraVinhEnum.values())),
    TUYEN_QUANG("Tuyên Quang", Arrays.asList(DistrictTuyenQuangEnum.values())),
    VINH_LONG("Vĩnh Long", Arrays.asList(DistrictVinhLongEnum.values())),
    VINH_PHUC("Vĩnh Phúc", Arrays.asList(DistrictVinhPhucEnum.values())),
    YEN_BAI("Yên Bái", Arrays.asList(DistrictYenBaiEnum.values())),
    HO_CHI_MINH("Hồ Chí Minh", Arrays.asList(DistrictHoChiMinhEnum.values()));


    private final String name;
    private final List<DistrictEnum> districts;


    public Province toProvince(){
        Province province = Province.builder()
                .name(this.name)
                .build();

        Set<District> districtSet = new HashSet<>();
        for (DistrictEnum districtEnum : districts) {
            District district = districtEnum.toDistrict();
            district.setProvince(province);
            districtSet.add(district);
        }

        province.setDistricts(districtSet);

        return province;
    }

    public static List<Province> getAllProvinces() {
        return Arrays.stream(ProvinceEnum.values())
                .map(ProvinceEnum::toProvince)
                .collect(Collectors.toList());
    }


}
