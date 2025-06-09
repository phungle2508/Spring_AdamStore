package Spring_AdamStore.service.impl;

import Spring_AdamStore.dto.request.VariantRequest;
import Spring_AdamStore.dto.request.VariantUpdateRequest;
import Spring_AdamStore.dto.response.ProductVariantResponse;
import Spring_AdamStore.entity.*;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.ProductVariantMapper;
import Spring_AdamStore.mapper.VariantMappingHelper;
import Spring_AdamStore.repository.*;
import Spring_AdamStore.service.ProductVariantService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static Spring_AdamStore.constants.EntityStatus.ACTIVE;

@Service
@Slf4j(topic = "PRODUCT-VARIANT-SERVICE")
@RequiredArgsConstructor
public class ProductVariantServiceImpl implements ProductVariantService {

    private final ProductVariantRepository productVariantRepository;
    private final ProductVariantMapper productVariantMapper;
    private final CartItemRepository cartItemRepository;
    private final VariantMappingHelper variantMappingHelper;
    private final FileRepository fileRepository;
    private final SizeRepository sizeRepository;
    private final ColorRepository colorRepository;
    private final OrderItemRepository orderItemRepository;


    @Override
    public ProductVariantResponse findByProductAndColorAndSize(Long productId, Long colorId, Long sizeId){
        ProductVariant variant = productVariantRepository
                .findByProductIdAndColorIdAndSizeId(productId, colorId, sizeId)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

        return productVariantMapper.toProductVariantResponse(variant, variantMappingHelper);
    }


    @Override
    @Transactional
    public Set<ProductVariant> saveVariantByProduct(Long productId, List<VariantRequest> variantRequests) {
        Set<ProductVariant> variantSet = new HashSet<>();

        for (VariantRequest request : variantRequests) {
            Color color = findColorById(request.getColorId());
            Size size = findSizeById(request.getSizeId());
            FileEntity image = findFileById(request.getImageId());

            ProductVariant variant = ProductVariant.builder()
                    .productId(productId)
                    .colorId(color.getId())
                    .sizeId(size.getId())
                    .imageId(image.getId())
                    .price(request.getPrice())
                    .quantity(request.getQuantity())
                    .isAvailable(true)
                    .build();

            variantSet.add(variant);
        }

        return new HashSet<>(productVariantRepository.saveAll(variantSet));
    }

    @Override
    @Transactional
    public Set<ProductVariant> updateVariantByProduct(Long productId, List<VariantRequest> variantRequests) {
        List<ProductVariant> oldVariants = productVariantRepository.findAllByProductId(productId);
        productVariantRepository.deleteAll(oldVariants);

        return saveVariantByProduct(productId, variantRequests);
    }


    @Override
    @Transactional
    public ProductVariantResponse updatePriceAndQuantity(Long id, VariantUpdateRequest request) {
        ProductVariant productVariant = productVariantRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

        productVariant.setPrice(request.getPrice());
        productVariant.setQuantity(request.getQuantity());

        return productVariantMapper.toProductVariantResponse(productVariantRepository.save(productVariant), variantMappingHelper);
    }

    @Override
    @Transactional
    public void delete(Long id) {
        ProductVariant productVariant = productVariantRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

        if(orderItemRepository.existsByProductVariantId(productVariant.getId())){
            throw new AppException(ErrorCode.PRODUCT_VARIANT_USED_IN_ORDER);
        }

//        cartItemRepository.deleteAll(productVariant.getCartItems());

        productVariantRepository.delete(productVariant);
    }

    @Override
    public ProductVariantResponse restore(long id) {
        ProductVariant productVariant = productVariantRepository.findProductVariantById(id)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

        productVariant.setStatus(ACTIVE);
        return productVariantMapper.toProductVariantResponse(productVariantRepository.save(productVariant), variantMappingHelper);
    }

    @Override
    public List<ProductVariant> findAllProductVariantByProductId(Long id) {
        return productVariantRepository.findAllByProductId(id);
    }


    private Color findColorById(Long id) {
        return colorRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.COLOR_NOT_EXISTED));
    }

    private Size findSizeById(Long id) {
        return sizeRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.SIZE_NOT_EXISTED));
    }

    private FileEntity findFileById(Long id) {
        return fileRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.FILE_NOT_EXISTED));
    }

}
