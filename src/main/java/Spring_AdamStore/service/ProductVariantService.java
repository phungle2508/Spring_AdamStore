package Spring_AdamStore.service;

import Spring_AdamStore.entity.Color;
import Spring_AdamStore.entity.Product;
import Spring_AdamStore.entity.ProductVariant;
import Spring_AdamStore.entity.Size;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;

import java.util.Set;

public interface ProductVariantService {

    Set<ProductVariant> saveProductVariant(Product product, Set<Size> sizeSet, Set<Color> colorSet, Double price, Integer quantity);

    Set<ProductVariant> updateProductVariants(Product product, Set<Size> sizeSet, Set<Color> colorSet, Double price, Integer quantity);

    Set<ProductVariant> updatePriceAndQuantity(Product product, Double price, Integer quantity);

}
