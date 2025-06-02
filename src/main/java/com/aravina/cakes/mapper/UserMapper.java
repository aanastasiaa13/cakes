package com.aravina.cakes.mapper;

import com.aravina.cakes.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {

    List<User> findAll();

    User findByPhoneAndPassword(@Param("phone") String phone, @Param("password") String password);

    void create(@Param("fullName") String fullName, @Param("phone") String phone, @Param("password") String password);

}
