package com.aravina.cakes.service;

import com.aravina.cakes.model.User;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public interface UserService {

    List<User> findAll();

    User findByPhoneAndPassword(String phone, String password);

    void create(String fullName, String phone, String password);

    boolean isUserAuthorized(HttpServletRequest request);

}
