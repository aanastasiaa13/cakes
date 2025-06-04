package com.aravina.cakes.controller;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.model.CartItem;
import com.aravina.cakes.model.User;
import com.aravina.cakes.service.CakeService;
import com.aravina.cakes.service.CartService;
import com.aravina.cakes.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/tortikov")
public class MainController {

    @Autowired
    private UserService userService;

    @Autowired
    private CakeService cakeService;

    @Autowired
    private CartService cartService;

    @GetMapping("/main")
    public String mainPage(HttpServletRequest request, Model model) {
        boolean isUserAuthorized = userService.isUserAuthorized(request);
        List<Cake> cakes = cakeService.findAll();
        Cake exampleCakeOne  = cakes.getFirst();
        Cake exampleCakeTwo = cakes.get(1);

        model.addAttribute("authorized", isUserAuthorized);
        model.addAttribute("cakes", cakes);
        model.addAttribute("exampleCakeOne", exampleCakeOne);
        model.addAttribute("exampleCakeTwo", exampleCakeTwo);

        return "main";
    }

    @GetMapping("/cake")
    public String getCakePage(@RequestParam Long id, Model model) {
        Cake cake = cakeService.findById(id);

        model.addAttribute("cake", cake);

        return "cake";
    }

    @GetMapping("/cart")
    public String getCartPage(Model model) {
        List<CartItem> items = cartService.findAll();

        model.addAttribute("items", items);

        return "cart";
    }

    @GetMapping("/users")
    public String usersPage(Model model) {
        List<User> users = userService.findAll();

        model.addAttribute("users", users);

        return "users";
    }

}
