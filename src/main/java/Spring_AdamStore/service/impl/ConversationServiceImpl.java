package Spring_AdamStore.service.impl;

import Spring_AdamStore.dto.request.ConversationRequest;
import Spring_AdamStore.dto.response.ConversationResponse;
import Spring_AdamStore.entity.nosql.Conversation;
import Spring_AdamStore.entity.nosql.ParticipantInfo;
import Spring_AdamStore.entity.sql.User;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.ConversationMapper;
import Spring_AdamStore.mapper.ConversationMappingHelper;
import Spring_AdamStore.repository.nosql.ConversationRepository;
import Spring_AdamStore.repository.sql.UserRepository;
import Spring_AdamStore.service.ConversationService;
import Spring_AdamStore.service.CurrentUserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.StringJoiner;

@Service
@Slf4j(topic = "CONVERSATION-SERVICE")
@RequiredArgsConstructor
public class ConversationServiceImpl implements ConversationService {

    private final ConversationRepository conversationRepository;
    private final CurrentUserService currentUserService;
    private final UserRepository userRepository;
    private final ConversationMappingHelper mappingHelper;
    private final ConversationMapper conversationMapper;

    public ConversationResponse createConversation(ConversationRequest request) {
        log.info("Create conversation with request: {}", request);

        User curentUser = currentUserService.getCurrentUser();

        User participantInfo = userRepository.findById(request.getParticipantIds().get(0))
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        // Create Con
        List<Long> userIds = new ArrayList<>();
        userIds.add(curentUser.getId());
        userIds.add(participantInfo.getId());

        List<Long> sortedIds = userIds.stream().sorted().toList();

        String userIdHash = generateParticipantHash(sortedIds);

        Optional<Conversation> existing = conversationRepository.findByParticipantsHash(userIdHash);
        if (existing.isPresent()) {
            return conversationMapper.toConversationResponse(existing.get(), mappingHelper);
        }

        List<ParticipantInfo> participantInfoList = createParticipantInfo(curentUser, participantInfo);

        // Build conversation info
        Conversation conversation = Conversation.builder()
                .type(request.getType())
                .participantsHash(userIdHash)
                .createdDate(LocalDateTime.now())
                .modifiedDate(LocalDateTime.now())
                .participants(participantInfoList)
                .build();

        return conversationMapper.toConversationResponse(conversationRepository.save(conversation), mappingHelper);
    }

    public List<ConversationResponse> myConversations() {
        log.info("Fetching conversations for current user");

        User curentUser = currentUserService.getCurrentUser();

        List<Conversation> conversations = conversationRepository.findAllByParticipantIdsContains(curentUser.getId());

        return conversations.stream()
                .map(conversation ->  conversationMapper.toConversationResponse(conversation, mappingHelper))
                .toList();
    }


    private List<ParticipantInfo> createParticipantInfo(User currentUser, User participantInfo){
        return List.of(
                ParticipantInfo.builder()
                        .userId(currentUser.getId())
                        .email(currentUser.getEmail())
                        .name(currentUser.getName())
                        .avatarUrl(currentUser.getAvatarUrl())
                        .build(),
                ParticipantInfo.builder()
                        .userId(participantInfo.getId())
                        .email(participantInfo.getEmail())
                        .name(participantInfo.getName())
                        .avatarUrl(participantInfo.getAvatarUrl())
                        .build());
    }

    private String generateParticipantHash(List<Long> sortedIds) {
        StringJoiner stringJoiner = new StringJoiner("_");
        sortedIds.forEach(id -> stringJoiner.add(id.toString()));
        // SHA 256

        return stringJoiner.toString();
    }
}
