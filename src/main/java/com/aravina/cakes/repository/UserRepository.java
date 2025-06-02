package com.aravina.cakes.repository;

import com.aravina.cakes.model.User;

import java.util.List;

public interface UserRepository {

    List<User> findAll();

    User findByPhoneAndPassword(String phone, String password);

    void create(String fullName, String phone, String password);

}
