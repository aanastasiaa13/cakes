package com.aravina.cakes.controller;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.service.CakeService;
import com.aravina.cakes.service.CartService;
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
    public String add(@RequestParam("id") Long id) {
        Cake cake = cakeService.findById(id);

        cartService.add(cake.getName(), cake.getPrice(), cake.getImagePath());

        return "redirect:/tortikov/cake?id=" + cake.getId();
    }

    @GetMapping("/delete")
    public String delete(@RequestParam Long id) {
        cartService.delete(id);

        return "redirect:/tortikov/cart";
    }

}
