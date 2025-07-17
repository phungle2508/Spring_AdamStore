package Spring_AdamStore.config;

import Spring_AdamStore.constants.AdminProperties;
import Spring_AdamStore.repository.sql.ProvinceRepository;
import Spring_AdamStore.repository.sql.RoleRepository;
import Spring_AdamStore.repository.sql.SizeRepository;
import Spring_AdamStore.repository.sql.UserRepository;
import Spring_AdamStore.service.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.CompletableFuture;


@Slf4j(topic = "APPLICATION-INITIALIZATION")
@RequiredArgsConstructor
@Configuration
public class ApplicationInitConfig {

    private final RoleRepository roleRepository;
    private final UserRepository userRepository;
    private final ProvinceRepository provinceRepository;
    private final InitService initService;
    private final SizeRepository sizeRepository;
    private final AdminProperties adminProperties;


    @Bean
    ApplicationRunner applicationRunner() {
        log.info("INIT APPLICATION STARTING....");

        return args -> {

            CompletableFuture<Void> roleAdminFuture = CompletableFuture.runAsync(() -> {
                        if (roleRepository.count() == 0) {
                            log.info("Initializing roles...");

                            initService.initRoles();
                        }

                        if (userRepository.countByEmail(adminProperties.getEmail()) == 0) {
                            log.info("Creating default admin account...");

                            initService.initAdmin();
                        }
            });


            CompletableFuture<Void> sizesFuture = CompletableFuture.runAsync(() -> {
                if(sizeRepository.count() == 0){
                    log.info("Initializing Sizes...");

                    initService.initSizes();
                }
            });

            CompletableFuture<Void> provincesFuture = CompletableFuture.runAsync(() -> {
                if(provinceRepository.count() == 0){
                    log.info("Initializing Provinces and Districts...");

                    initService.initProvinces();
                }
            });

            CompletableFuture.allOf(roleAdminFuture, sizesFuture, provincesFuture).join();

            log.info("INIT APPLICATION FINISHED SUCCESSFULLY");
        };
    }



}
