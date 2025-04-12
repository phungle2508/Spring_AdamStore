package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.basic.EntityBasic;
import Spring_AdamStore.dto.request.CategoryRequest;
import Spring_AdamStore.dto.response.CategoryResponse;
import Spring_AdamStore.dto.response.ProductResponse;
import Spring_AdamStore.entity.Category;
import Spring_AdamStore.entity.Product;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface CategoryMapper {

    Category toCategory(CategoryRequest request);

    CategoryResponse toCategoryResponse(Category category);

    void update(@MappingTarget Category category, CategoryRequest request);

    List<CategoryResponse> toCategoryResponseList(List<Category> categories);

    EntityBasic toEntityBasic(Category category);

}
