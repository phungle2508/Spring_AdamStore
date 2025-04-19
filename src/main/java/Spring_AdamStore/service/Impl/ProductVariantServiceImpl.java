package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.request.ProductVariantUpdateRequest;
import Spring_AdamStore.dto.response.ProductVariantResponse;
import Spring_AdamStore.entity.Color;
import Spring_AdamStore.entity.Product;
import Spring_AdamStore.entity.ProductVariant;
import Spring_AdamStore.entity.Size;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.ProductVariantMapper;
import Spring_AdamStore.repository.ProductVariantRepository;
import Spring_AdamStore.service.ProductVariantService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@Slf4j(topic = "PRODUCT-VARIANT-SERVICE")
@RequiredArgsConstructor
public class ProductVariantServiceImpl implements ProductVariantService {

    private final ProductVariantRepository productVariantRepository;
    private final ProductVariantMapper productVariantMapper;


    @Override
    public ProductVariantResponse findByProductAndColorAndSize(Long productId, Long colorId, Long sizeId){
        ProductVariant variant = productVariantRepository
                .findByProductIdAndColorIdAndSizeId(productId, colorId, sizeId)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

        return productVariantMapper.toProductVariantResponse(variant);
    }


    @Override
    public Set<ProductVariant> saveProductVariant(Product product, Set<Size> sizeSet, Set<Color> colorSet, Double price, Integer quantity) {
        Set<ProductVariant> productVariantSet = new HashSet<>();

        for (Color color : colorSet) {
            for (Size size : sizeSet) {
                ProductVariant variant = ProductVariant.builder()
                        .price(price)
                        .quantity(quantity)
                        .product(product)
                        .size(size)
                        .color(color)
                        .build();

                productVariantSet.add(variant);
            }
        }
        return new HashSet<>(productVariantRepository.saveAll(productVariantSet));
    }

    @Override
    public Set<ProductVariant> updateProductVariants(Product product, Set<Size> sizeSet, Set<Color> colorSet, Double price, Integer quantity) {
        List<ProductVariant> oldVariants = productVariantRepository.findAllByProductId(product.getId());
        productVariantRepository.deleteAll(oldVariants);
        Set<ProductVariant> productVariantSet = new HashSet<>();

        for (Color color : colorSet) {
            for (Size size : sizeSet) {
                ProductVariant variant = ProductVariant.builder()
                        .price(price)
                        .quantity(quantity)
                        .product(product)
                        .size(size)
                        .color(color)
                        .build();

                productVariantSet.add(variant);
            }
        }
        return new HashSet<>(productVariantRepository.saveAll(productVariantSet));
    }

    public Set<ProductVariant> updatePriceAndQuantity(Product product, Double price, Integer quantity) {
        List<ProductVariant> oldVariants = productVariantRepository.findAllByProductId(product.getId());

        for (ProductVariant variant : oldVariants) {
            variant.setPrice(price);
            variant.setQuantity(quantity);
        }

        return new HashSet<>(productVariantRepository.saveAll(oldVariants));
    }

    @Override
    @Transactional
    public ProductVariantResponse updatePriceAndQuantity(Long id, ProductVariantUpdateRequest request) {
        ProductVariant productVariant = productVariantRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

        productVariant.setPrice(request.getPrice());
        productVariant.setQuantity(request.getQuantity());

        return productVariantMapper.toProductVariantResponse(productVariantRepository.save(productVariant));
    }
}
