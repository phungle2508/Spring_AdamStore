package Spring_AdamStore.service;

import Spring_AdamStore.dto.request.ReviewRequest;
import Spring_AdamStore.dto.request.ReviewUpdateRequest;
import Spring_AdamStore.dto.response.ReviewResponse;
import jakarta.validation.constraints.Min;

public interface ReviewService {

    ReviewResponse create(ReviewRequest request);

    ReviewResponse update(Long id, ReviewUpdateRequest request);

    void delete(Long id);

    ReviewResponse fetchById(Long id);
}
