package com.aravina.cakes.service;

import com.aravina.cakes.model.Role;
import com.aravina.cakes.model.User;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public interface UserService {

    List<User> findAll();

    User findById(Long id);

    User findByPhoneAndPassword(String phone, String password);

    void create(String fullName, String phone, String password);

    boolean isUserAuthorized(HttpServletRequest request);

    void update(Long id,
                String fullName,
                String phone,
                Role role);

    void delete(Long id);

}
