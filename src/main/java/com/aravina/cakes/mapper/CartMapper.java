package com.aravina.cakes.mapper;

import com.aravina.cakes.model.CartItem;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CartMapper {

    List<CartItem> findAll();

    void add(@Param("cakeName") String cakeName,
             @Param("cakePrice") double cakePrice,
             @Param("cakeImagePath") String cakeImagePath);

    void delete(@Param("id") Long id);

}
