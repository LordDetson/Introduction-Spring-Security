package by.babanin.introductionspringsecurity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    @GetMapping(value = {"/", "/login"})
    public static String login(Model model, @RequestParam(value = "error", required = false) String error) {
        if (error != null)
            model.addAttribute("error", "Invalid username or password!");
        return "index";
    }
}
