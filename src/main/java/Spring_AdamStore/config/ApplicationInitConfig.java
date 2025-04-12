package Spring_AdamStore.config;

import Spring_AdamStore.constants.Gender;
import Spring_AdamStore.constants.ProvinceEnum;
import Spring_AdamStore.constants.RoleEnum;
import Spring_AdamStore.constants.SizeEnum;
import Spring_AdamStore.entity.*;
import Spring_AdamStore.repository.*;
import Spring_AdamStore.service.relationship.UserHasRoleService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.experimental.NonFinal;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j(topic = "APPLICATION-INITIALIZATION")
@RequiredArgsConstructor
@Configuration
public class ApplicationInitConfig {

    private final PasswordEncoder passwordEncoder;
    private final RoleRepository roleRepository;
    private final UserRepository userRepository;
    private final UserHasRoleService userHasRoleService;
    private final ProvinceRepository provinceRepository;
    private final DistrictRepository districtRepository;
    private final SizeRepository sizeRepository;

    @NonFinal
    static final String ADMIN_EMAIL = "admin@gmail.com";

    @NonFinal
    static final String ADMIN_PASSWORD = "123456";

    @Transactional
    @Bean
    ApplicationRunner applicationRunner() {
        log.info("INIT APPLICATION STARTING....");

        return args -> {

            if (roleRepository.count() == 0) {
                log.info("Initializing roles...");

                Role userRole = roleRepository.save(Role.builder()
                        .name(RoleEnum.USER.name())
                        .description("ROLE_USER")
                        .build());

                Role adminRole = roleRepository.save(Role.builder()
                        .name(RoleEnum.ADMIN.name())
                        .description("ROLE_ADMIN")
                        .build());

                List<Role> roleList = List.of(userRole, adminRole);
                roleRepository.saveAllAndFlush(roleList);
            }

            if (userRepository.countByEmail(ADMIN_EMAIL) == 0) {
                log.info("Creating default admin account...");

                User admin = userRepository.save(User.builder()
                        .name("Admin")
                        .email(ADMIN_EMAIL)
                        .phone("099999999")
                        .password(passwordEncoder.encode(ADMIN_PASSWORD))
                        .dob(LocalDate.now())
                        .gender(Gender.MALE)
                        .build());

            userHasRoleService.saveUserHasRole(admin, RoleEnum.ADMIN);
            }

            if(provinceRepository.count() == 0){
                log.info("Initializing Provinces and Districts...");

                List<Province> provinceList = ProvinceEnum.getAllProvinces();

                provinceRepository.saveAllAndFlush(provinceList);

                List<District> allDistricts = provinceList.stream()
                        .flatMap(province -> province.getDistricts().stream())
                        .collect(Collectors.toList());

                districtRepository.saveAllAndFlush(allDistricts);
            }

            if(sizeRepository.count() == 0){
                log.info("Initializing Sizes...");

                List<Size> sizeList = SizeEnum.getAllSizes();

                sizeRepository.saveAllAndFlush(sizeList);
            }

        };
    }



}
