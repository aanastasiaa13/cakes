package com.aravina.cakes.mapper;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.model.CartItem;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;

@Mapper
public interface CartMapper {

    List<CartItem> findAll();

    List<CartItem> findCartItemsByUserId(@Param("id") Long id);

    Long getCurrentId();

    void add(@Param("cake") Cake cake);

    void createCartItemLink(@Param("userId") Long userId, @Param("cartItemId") Long cartItemId);

    void delete(@Param("id") Long id);

}
