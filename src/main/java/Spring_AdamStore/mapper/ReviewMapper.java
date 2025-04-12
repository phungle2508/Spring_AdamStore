
package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.ReviewRequest;
import Spring_AdamStore.dto.request.ReviewUpdateRequest;
import Spring_AdamStore.dto.response.ReviewResponse;
import Spring_AdamStore.entity.Review;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ReviewMapper {

    Review toReview(ReviewRequest request);

    ReviewResponse toReviewResponse(Review review);

    void update(@MappingTarget Review review, ReviewUpdateRequest request);

    List<ReviewResponse> toReviewResponseList(List<Review> reviewList);

}
