package by.babanin.introductionspringsecurity;

import org.springframework.security.access.annotation.Secured;

public interface ProcessInterface {
    @Secured("ROLE_ADMIN")
    String getMessage();
}
