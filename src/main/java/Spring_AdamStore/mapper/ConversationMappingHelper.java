package Spring_AdamStore.mapper;

import Spring_AdamStore.entity.nosql.Conversation;
import Spring_AdamStore.entity.nosql.ParticipantInfo;
import Spring_AdamStore.entity.sql.User;
import Spring_AdamStore.service.CurrentUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class ConversationMappingHelper {

    private final CurrentUserService currentUserService;

    public String getConversationAvatar(Conversation conversation){
        User currentUser = currentUserService.getCurrentUser();

        return conversation.getParticipants().stream()
                .filter(participantInfo -> !participantInfo.getUserId().equals(currentUser.getId()) &&
                        participantInfo.getAvatarUrl() != null)
                .map(ParticipantInfo::getAvatarUrl)
                .findFirst()
                .orElse("default.jpg");
    }

    public String getConversationName(Conversation conversation){
        User currentUser = currentUserService.getCurrentUser();

        return conversation.getParticipants().stream()
                .filter(participantInfo -> !participantInfo.getUserId().equals(currentUser.getId()))
                .map(ParticipantInfo::getName)
                .findFirst()
                .orElse(null);
    }
}
