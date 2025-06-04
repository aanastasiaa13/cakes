package com.aravina.cakes.controller;

import com.aravina.cakes.model.*;
import com.aravina.cakes.service.CakeService;
import com.aravina.cakes.service.CartService;
import com.aravina.cakes.service.OrderService;
import com.aravina.cakes.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/tortikov")
public class MainController {

    @Autowired
    private UserService userService;

    @Autowired
    private CakeService cakeService;

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;

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
    public String getCakePage(HttpServletRequest request,
                              @RequestParam Long id,
                              Model model) {
        boolean isUserAuthorized = userService.isUserAuthorized(request);
        Cake cake = cakeService.findById(id);

        model.addAttribute("cake", cake);
        model.addAttribute("authorized", isUserAuthorized);

        return "cake";
    }

    @GetMapping("/cart")
    public String getCartPage(HttpServletRequest request, Model model) {
        boolean isUserAuthorized = userService.isUserAuthorized(request);
        Long userId = null;

        if (isUserAuthorized) {
            HttpSession session = request.getSession();
            userId = (Long) session.getAttribute("userId");
        }

        List<CartItem> items = cartService.findCartItemsByUserId(userId);

        model.addAttribute("items", items);
        model.addAttribute("authorized", isUserAuthorized);

        return "cart";
    }

    @GetMapping("/orders")
    public String ordersPage(Model model) {
        List<Order> orders = orderService.findAll();

        model.addAttribute("orders", orders);

        return "orders";
    }

    @GetMapping("/users")
    public String usersPage(Model model) {
        List<User> users = userService.findAll();

        model.addAttribute("users", users);

        return "users";
    }

    @GetMapping("/edit")
    public String editPage(@RequestParam("id") Long id,
                           @RequestParam("mode") String mode,
                           Model model) {
        model.addAttribute("mode", mode);

        if (mode.equals("users")) {
            User user = userService.findById(id);

            model.addAttribute("user", user);
        }

        if (mode.equals("orders")) {
            Order order = orderService.findById(id);
            List<Cake> cakes = cakeService.findAll();

            model.addAttribute("order", order);
            model.addAttribute("cakes", cakes);
        }

        return "edit";
    }

    @PostMapping("/process")
    public String process(@RequestParam Map<String, String> params) {
        String fio = params.getOrDefault("fio", "");
        String address = params.getOrDefault("address", "");
        BigDecimal cost = new BigDecimal(params.getOrDefault("cost", "0.0"));

        String cakesName = params.entrySet().stream()
                .filter(entry -> entry.getKey().startsWith("cakeName-"))
                .map(entry -> {
                    String id = entry.getKey().split("-")[1];
                    String countKey = "count-" + id;
                    String count = params.getOrDefault(countKey, "1");
                    return entry.getValue() + ", " + count + " шт.";
                })
                .collect(Collectors.joining(";"));

        List<Long> cartItemsIds = params.keySet().stream()
                .filter(key -> key.startsWith("cakeName-"))
                .map(key -> Long.parseLong(key.split("-")[1]))
                .toList();

        orderService.add(fio, cakesName, address, cost, Status.ACTIVE);

        cartItemsIds.forEach(id -> {
            cartService.delete(id);
        });

        return "redirect:/tortikov/cart";
    }

}
