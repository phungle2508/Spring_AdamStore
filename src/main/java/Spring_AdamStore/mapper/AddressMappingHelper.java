package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.basic.WardBasic;
import Spring_AdamStore.dto.response.FileResponse;
import Spring_AdamStore.entity.*;
import Spring_AdamStore.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class AddressMappingHelper {

    private final WardRepository wardRepository;
    private final DistrictRepository districtRepository;
    private final ProvinceRepository provinceRepository;

    private final ProductVariantRepository productVariantRepository;
    private final ColorRepository colorRepository;
    private final SizeRepository sizeRepository;
    private final FileRepository fileRepository;
    private final ColorMapper colorMapper;

    private final FileMapper fileMapper;
    private final SizeMapper sizeMapper;

    public WardBasic getWard(String code){
        return wardRepository.findByCode(code)
                .map(ward -> new WardBasic(ward.getCode(), ward.getName()))
                .orElse(null);
    }

    public EntityBasic getDistrict(Integer districtId){
        return districtRepository.findById(districtId)
                .map(district -> new EntityBasic(district.getId().longValue(), district.getName()))
                .orElse(null);
    }

    public EntityBasic getProvince(Integer provinceId){
        return provinceRepository.findById(provinceId)
                .map(province -> new EntityBasic(province.getId().longValue(), province.getName()))
                .orElse(null);
    }



    public Set<EntityBasic> getColorsByProduct(Product product){
        List<ProductVariant> productVariantList = productVariantRepository.findAllByProductId(product.getId());

        Set<Long> idSet = productVariantList.stream()
                .map(ProductVariant::getColorId)
                .collect(Collectors.toSet());

        Set<Color> colorSet = colorRepository.findAllByIdIn(idSet);

        return colorMapper.toEntityBasicSet(colorSet);
    }

    public Set<EntityBasic> getSizesByProduct(Long productId){
        List<ProductVariant> productVariantList = productVariantRepository.findAllByProductId(productId);

        Set<Long> idSet = productVariantList.stream()
                .map(ProductVariant::getSizeId)
                .collect(Collectors.toSet());

        Set<Size> sizeSet = sizeRepository.findAllByIdIn(idSet);

        return sizeMapper.toEntityBasicSet(sizeSet);
    }


    public Set<EntityBasic> getImagesByProduct(Long productId){
        List<ProductVariant> productVariantList = productVariantRepository.findAllByProductId(productId);

        Set<Long> idSet = productVariantList.stream()
                .map(ProductVariant::getSizeId)
                .collect(Collectors.toSet());

        Set<Size> sizeSet = sizeRepository.findAllByIdIn(idSet);

        return sizeMapper.toEntityBasicSet(sizeSet);
    }

    public Set<FileResponse> getFileByProduct(Long productId){
        List<FileEntity> fileList = fileRepository.findAllByProductId(productId);

        return new HashSet<>(fileMapper.toFileResponseList(fileList));
    }


}
