package Spring_AdamStore.service.Impl;

import Spring_AdamStore.constants.EntityStatus;
import Spring_AdamStore.dto.request.ProductRequest;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProductResponse;
import Spring_AdamStore.entity.Product;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.ProductMapper;
import Spring_AdamStore.repository.ProductRepository;
import Spring_AdamStore.repository.ReviewRepository;
import Spring_AdamStore.service.PageableService;
import Spring_AdamStore.service.ProductService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j(topic = "PRODUCT-SERVICE")
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;
    private final ProductMapper productMapper;
    private final PageableService pageableService;
    private final ReviewRepository reviewRepository;


    @Override
    public ProductResponse create(ProductRequest request) {
        if(productRepository.existsByName(request.getName())){
            throw new AppException(ErrorCode.PRODUCT_EXISTED);
        }

        Product product = productMapper.toProduct(request);

        return productMapper.toProductResponse(productRepository.save(product));
    }

    @Override
    public ProductResponse fetchById(Long id) {
        Product product = findProductById(id);

        return productMapper.toProductResponse(product);
    }

    @Override
    public PageResponse<ProductResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<Product> productPage = productRepository.findAll(pageable);

        return PageResponse.<ProductResponse>builder()
                .page(productPage.getNumber() + 1)
                .size(productPage.getSize())
                .totalPages(productPage.getTotalPages())
                .totalItems(productPage.getTotalElements())
                .items(productMapper.toProductResponseList(productPage.getContent()))
                .build();
    }

    @Override
    public ProductResponse update(Long id, ProductRequest request) {
        if(productRepository.existsByName(request.getName())){
            throw new AppException(ErrorCode.PRODUCT_EXISTED);
        }

        Product product = findProductById(id);

        productMapper.updateProduct(product, request);

        return productMapper.toProductResponse(productRepository.save(product));
    }

    @Transactional
    @Override
    public void delete(Long id) {
        Product product = findProductById(id);

        product.setStatus(EntityStatus.INACTIVE);

        productRepository.save(product);
    }

    private Product findProductById(Long id) {
        return productRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_EXISTED));
    }


    @Scheduled(cron = "0 0 0 */7 * ?")
    public void updateProductRatings() {
        List<Product> productList = productRepository.findAll();
        for (Product product : productList) {
            double avgRating = reviewRepository.getAverageRatingByProductId(product.getId());
            int totalReviews = reviewRepository.getTotalReviewsByProductId(product.getId());
            product.setAverageRating(avgRating);
            product.setTotalReviews(totalReviews);
            productRepository.save(product);
        }
        log.info("Update Products Ratings");
    }
}
