package Spring_AdamStore.repository.nosql;

import Spring_AdamStore.entity.nosql.ChatMessage;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChatMessageRepository extends MongoRepository<ChatMessage, String> {

    List<ChatMessage> findAllByConversationIdOrderByCreatedDateDesc(String conversationId);

}
