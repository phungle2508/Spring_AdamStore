package Spring_AdamStore.service.Impl;

import Spring_AdamStore.constants.EntityStatus;
import Spring_AdamStore.dto.request.BranchRequest;
import Spring_AdamStore.dto.request.BranchUpdateRequest;
import Spring_AdamStore.dto.response.BranchResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.entity.Branch;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.BranchMapper;
import Spring_AdamStore.repository.BranchRepository;
import Spring_AdamStore.service.BranchService;
import Spring_AdamStore.service.PageableService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@Slf4j(topic = "BRANCH-SERVICE")
@RequiredArgsConstructor
public class BranchServiceImpl implements BranchService {

    private final BranchMapper branchMapper;
    private final BranchRepository branchRepository;
    private final PageableService pageableService;

    @Override
    public BranchResponse create(BranchRequest request) {
        if(branchRepository.existsByName(request.getName())){
            throw new AppException(ErrorCode.BRANCH_EXISTED);
        }

        if(branchRepository.existsByPhone(request.getPhone())){
            throw new AppException(ErrorCode.PHONE_EXISTED);
        }

        Branch branch = branchMapper.toBranch(request);

        return branchMapper.toBranchResponse(branchRepository.save(branch));
    }

    @Override
    public BranchResponse fetchById(Long id) {
        Branch branch = findActiveBranchById(id);

        return branchMapper.toBranchResponse(branch);
    }

    @Override
    public PageResponse<BranchResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        pageNo = pageNo - 1;

        Pageable pageable = pageableService.createPageable(pageNo, pageSize, sortBy);

        Page<Branch> branchPage = branchRepository.findAll(pageable);

        return PageResponse.<BranchResponse>builder()
                .page(branchPage.getNumber() + 1)
                .size(branchPage.getSize())
                .totalPages(branchPage.getTotalPages())
                .totalItems(branchPage.getTotalElements())
                .items(branchMapper.toBranchResponseList(branchPage.getContent()))
                .build();
    }

    @Override
    public BranchResponse update(Long id, BranchUpdateRequest request) {
        if(branchRepository.existsByName(request.getName())){
            throw new AppException(ErrorCode.BRANCH_EXISTED);
        }

        if(branchRepository.existsByPhone(request.getPhone())){
            throw new AppException(ErrorCode.PHONE_EXISTED);
        }

        Branch branch = findActiveBranchById(id);

        branchMapper.update(branch, request);

        return branchMapper.toBranchResponse(branchRepository.save(branch));
    }

    @Transactional
    @Override
    public void delete(Long id) {
        Branch branch = findActiveBranchById(id);

        branch.setStatus(EntityStatus.INACTIVE);

        branchRepository.save(branch);
    }

    private Branch findActiveBranchById(Long id) {
        return branchRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.BRANCH_NOT_EXISTED));
    }
}
