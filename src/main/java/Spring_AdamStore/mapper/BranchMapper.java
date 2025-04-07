package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.request.BranchRequest;
import Spring_AdamStore.dto.response.BranchResponse;
import Spring_AdamStore.entity.Branch;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.NullValueCheckStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface BranchMapper {

    Branch toBranch(BranchRequest request);

    BranchResponse toBranchResponse(Branch branch);

    void update(@MappingTarget Branch branch, BranchRequest request);

    List<BranchResponse> toBranchResponseList(List<Branch> branchList);

}
