package by.babanin.introductionspringsecurity;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;

@Controller
public class MainController {
    private static final Logger log = LoggerFactory.getLogger(MainController.class);

    @GetMapping("/admin")
    public String admin(Principal user) {
        log.info(user.getName() + " visited admin page");
        return "/content/admin";
    }

    @GetMapping("/user")
    public String user(Principal user) {
        log.info(user.getName() + " visited user page");
        return "/content/user";
    }

    @GetMapping("/accessDenied")
    public ModelAndView accessDenied(Principal user) {
        ModelAndView mav = new ModelAndView();
        if (user != null) {
            mav.addObject("errorMsg", user.getName() + " у вас нет доступа к этой странице!");
        } else {
            mav.addObject("errorMsg", "У вас нет доступа к этой странице!");
        }
        mav.setViewName("/error/accessDenied");
        return mav;
    }
}
