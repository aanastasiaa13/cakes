package com.aravina.cakes.service;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.model.CartItem;

import java.math.BigDecimal;
import java.util.List;

public interface CartService {

    List<CartItem> findAll();

    List<CartItem> findCartItemsByUserId(Long id);

    Long getCurrentId();

    void add(Cake cake);

    void createCartItemLink(Long userId, Long cartItemId);

    void delete(Long id);

}
