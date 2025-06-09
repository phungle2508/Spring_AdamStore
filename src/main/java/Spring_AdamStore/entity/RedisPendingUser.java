package Spring_AdamStore.entity;

import jakarta.persistence.Entity;
import lombok.*;
import lombok.experimental.FieldDefaults;
import org.springframework.data.annotation.Id;
import org.springframework.data.redis.core.RedisHash;
import org.springframework.data.redis.core.TimeToLive;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@RedisHash("RedisPendingUser")
public class RedisPendingUser {

    @Id
    private String email;

    private String name;
    private String phone;
    private String password;

    @TimeToLive
    private long ttl;
}
