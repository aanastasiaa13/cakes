package com.aravina.cakes.controller;

import com.aravina.cakes.model.Role;
import com.aravina.cakes.model.Status;
import com.aravina.cakes.model.User;
import com.aravina.cakes.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/tortikov/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/update")
    public String update(@RequestParam("id") Long id,
                         @RequestParam("fullName") String fullName,
                         @RequestParam("phone") String phone,
                         @RequestParam("role") Role role) {
        userService.update(id, fullName, phone, role);

        return "redirect:/tortikov/users";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id) {
        userService.delete(id);

        return "redirect:/tortikov/users";
    }

}
