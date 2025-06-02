package com.aravina.cakes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tortikov/test")
public class CakesController {
    @GetMapping("/main")
    public String getMainPage() {
        return "main";
    }

    @GetMapping("/cake")
    public String getCakePage() {
        return "cake";
    }

    @GetMapping("/orders")
    public String getOrdersPage() {
        return "orders";
    }

    @GetMapping("/cakes")
    public String getCakesPage() {
        return "cakes";
    }

    @GetMapping("/users")
    public String getUsersPage() {
        return "users";
    }
}
