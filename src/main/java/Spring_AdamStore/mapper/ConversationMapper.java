package Spring_AdamStore.mapper;

import Spring_AdamStore.dto.response.ConversationResponse;
import Spring_AdamStore.entity.nosql.Conversation;
import org.mapstruct.Context;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValueCheckStrategy;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface ConversationMapper {

    @Mapping(target = "conversationName", expression = "java(context.getConversationName(conversation))")
    @Mapping(target = "conversationAvatar", expression = "java(context.getConversationAvatar(conversation))")
    ConversationResponse toConversationResponse(Conversation conversation, @Context ConversationMappingHelper context);
}
