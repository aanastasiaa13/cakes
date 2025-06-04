package com.aravina.cakes.controller;

import com.aravina.cakes.model.Status;
import com.aravina.cakes.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;

@Controller
@RequestMapping("/tortikov/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/update")
    public String update(@RequestParam("id") Long id,
                         @RequestParam("fio") String fio,
                         @RequestParam("cakesName") String cakesName,
                         @RequestParam("address") String address,
                         @RequestParam("cost") BigDecimal cost,
                         @RequestParam("status") Status status) {
        orderService.update(id, fio, cakesName, address, cost, status);

        return "redirect:/tortikov/orders";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id) {
        orderService.delete(id);

        return "redirect:/tortikov/orders";
    }

}
