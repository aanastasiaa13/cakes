package com.aravina.cakes.service;

import com.aravina.cakes.model.CartItem;

import java.util.List;

public interface CartService {

    List<CartItem> findAll();

    void add(String cakeName,
             double cakePrice,
             String cakeImagePath);

    void delete(Long id);

}
