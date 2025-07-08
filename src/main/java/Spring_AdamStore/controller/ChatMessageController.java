package Spring_AdamStore.controller;

import Spring_AdamStore.dto.request.ChatMessageRequest;
import Spring_AdamStore.dto.response.ApiResponse;
import Spring_AdamStore.dto.response.ChatMessageResponse;
import Spring_AdamStore.service.ChatMessageService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;


@Slf4j(topic = "CHAT-MESSAGE-CONTROLLER")
@RestController
@RequiredArgsConstructor
@RequestMapping("/v1")
public class ChatMessageController {

    private final ChatMessageService chatMessageService;
    private final SimpMessagingTemplate messagingTemplate;

    @MessageMapping("/chat.sendMessage")
    void create(@Payload @Valid ChatMessageRequest request, Principal principal) {
        log.info("Received message from user = {} : {}", principal.getName(), request.getMessage());

        ChatMessageResponse response = chatMessageService.createMessage(request, principal);

        messagingTemplate.convertAndSend(
                "/topic/conversation." + request.getConversationId(),
                response);

        log.info("{} send Message successfully", principal.getName());
    }

    @Operation(summary = "Fetch all messages for conversationId",
            description = "Lấy danh sách tin nhắn  trong một cuộc trò chuyện")
    @GetMapping("/private/messages")
    ApiResponse<List<ChatMessageResponse>> getMessages(@RequestParam("conversationId") String conversationId) {
        log.info("Received request to fetch messages for conversationId: {}", conversationId);

        return ApiResponse.<List<ChatMessageResponse>>builder()
                .code(HttpStatus.OK.value())
                .message("Get Messages for conversationId")
                .result(chatMessageService.getMessages(conversationId))
                .build();
    }

}
