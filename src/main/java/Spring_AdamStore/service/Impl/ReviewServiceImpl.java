package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.request.ReviewRequest;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.ProductResponse;
import Spring_AdamStore.dto.response.ReviewResponse;
import Spring_AdamStore.entity.Product;
import Spring_AdamStore.entity.Review;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.ReviewMapper;
import Spring_AdamStore.repository.ReviewRepository;
import Spring_AdamStore.service.PageableService;
import Spring_AdamStore.service.ReviewService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@Slf4j(topic = "REVIEW-SERVICE")
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService {

    private final ReviewRepository reviewRepository;
    private final ReviewMapper reviewMapper;
    private final PageableService pageableService;

    @Override
    public ReviewResponse create(ReviewRequest request) {
        Review review = reviewMapper.toReview(request);

        return reviewMapper.toReviewResponse(reviewRepository.save(review));
    }

    @Override
    public ReviewResponse fetchById(Long id) {
        Review review = findReviewById(id);

        return reviewMapper.toReviewResponse(review);
    }

    @Override
    public PageResponse<ReviewResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<Review> reviewPage = reviewRepository.findAll(pageable);

        return PageResponse.<ReviewResponse>builder()
                .page(reviewPage.getNumber() + 1)
                .size(reviewPage.getSize())
                .totalPages(reviewPage.getTotalPages())
                .totalItems(reviewPage.getTotalElements())
                .items(reviewMapper.toReviewResponseList(reviewPage.getContent()))
                .build();
    }

    @Override
    public ReviewResponse update(Long id, ReviewRequest request) {
        Review review = findReviewById(id);

        reviewMapper.update(review, request);

        return reviewMapper.toReviewResponse(reviewRepository.save(review));
    }

    @Override
    public void delete(Long id) {
        Review review = findReviewById(id);
        reviewRepository.delete(review);
    }

    private Review findReviewById(Long id) {
        return reviewRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.REVIEW_NOT_EXISTED));
    }
}
