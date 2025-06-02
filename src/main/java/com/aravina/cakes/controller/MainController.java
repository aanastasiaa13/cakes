package com.aravina.cakes.controller;

import com.aravina.cakes.model.User;
import com.aravina.cakes.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/tortikov")
public class MainController {

    @Autowired
    private UserService userService;

    @GetMapping("/main")
    public String mainPage(HttpServletRequest request, Model model) {
        boolean isUserAuthorized = userService.isUserAuthorized(request);

        model.addAttribute("authorized", isUserAuthorized);

        return "main";
    }

    @GetMapping("/users")
    public String usersPage(Model model) {
        List<User> users = userService.findAll();

        model.addAttribute("users", users);

        return "users";
    }

}
