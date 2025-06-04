package com.aravina.cakes.repository;

import com.aravina.cakes.model.Role;
import com.aravina.cakes.model.Status;
import com.aravina.cakes.model.User;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;

public interface UserRepository {

    List<User> findAll();

    User findById(Long id);

    User findByPhoneAndPassword(String phone, String password);

    void create(String fullName, String phone, String password);

    void update(Long id,
                String fullName,
                String phone,
                Role role);

    void delete(Long id);

}
