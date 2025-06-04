package com.aravina.cakes.mapper;

import com.aravina.cakes.model.Role;
import com.aravina.cakes.model.Status;
import com.aravina.cakes.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;

@Mapper
public interface UserMapper {

    List<User> findAll();

    User findById(@Param("id") Long id);

    User findByPhoneAndPassword(@Param("phone") String phone, @Param("password") String password);

    void create(@Param("fullName") String fullName,
                @Param("phone") String phone,
                @Param("password") String password);

    void update(@Param("id") Long id,
                @Param("fullName") String fullName,
                @Param("phone") String phone,
                @Param("role") Role role);

    void delete(@Param("id") Long id);

}
