package com.aravina.cakes.repository;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.model.CartItem;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;

public interface CartRepository {

    List<CartItem> findAll();

    List<CartItem> findCartItemsByUserId(Long id);

    Long getCurrentId();

    void add(Cake cake);

    void createCartItemLink(Long userId, Long cartItemId);

    void delete(Long id);

}
