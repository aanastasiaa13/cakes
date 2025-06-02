package com.aravina.cakes.controller;

import com.aravina.cakes.model.User;
import com.aravina.cakes.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/tortikov/auth")
public class AuthController {

    @Autowired
    private UserService userService;

    @PostMapping("/sign-in")
    public String signIn(HttpSession session,
                         @RequestParam("fullName") String fullName,
                         @RequestParam("phone") String phone,
                         @RequestParam("password") String password) {
        User user = userService.findByPhoneAndPassword(phone, password);

        if (user == null) {
            // Регистрируем
            userService.create(fullName, phone, password);
            user = userService.findByPhoneAndPassword(phone, password);
        }

        session.setAttribute("userId", user.getId());
        session.setAttribute("userRole", user.getRole());

        return "redirect:/tortikov/main";
    }

    @GetMapping("/sign-out")
    public String signOut(HttpSession session) {
        session.invalidate();

        return "redirect:/tortikov/main";
    }

}
