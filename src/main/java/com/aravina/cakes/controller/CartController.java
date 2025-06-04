package com.aravina.cakes.controller;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.service.CakeService;
import com.aravina.cakes.service.CartService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/tortikov/cart")
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CakeService cakeService;

    @GetMapping("/add")
    public String add(HttpSession session, @RequestParam("id") Long id) {
        Cake cake = cakeService.findById(id);
        Long userId = (Long) session.getAttribute("userId");

        if (userId != null) {
            cartService.add(cake);
            Long cartItemId = cartService.getCurrentId();
            cartService.createCartItemLink(userId, cartItemId);
        }

        return "redirect:/tortikov/cart";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam Long id) {
        cartService.delete(id);

        return "redirect:/tortikov/cart";
    }

}
