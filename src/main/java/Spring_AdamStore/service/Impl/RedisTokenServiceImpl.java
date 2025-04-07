package Spring_AdamStore.service.Impl;

import Spring_AdamStore.entity.RedisRevokedToken;
import Spring_AdamStore.repository.RevokedTokenRepository;
import Spring_AdamStore.service.RedisTokenService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j(topic = "REDIS-TOKEN-SERVICE")
@RequiredArgsConstructor
@Service
public class RedisTokenServiceImpl implements RedisTokenService {

    private final RevokedTokenRepository revokedTokenRepository;


    @Override
    public void saveRevokedToken(RedisRevokedToken redisRevokedToken) {
        revokedTokenRepository.save(redisRevokedToken);
    }
}
