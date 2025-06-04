package com.aravina.cakes.repository;

import com.aravina.cakes.model.CartItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartRepository {

    List<CartItem> findAll();

    void add(String cakeName,
             double cakePrice,
             String cakeImagePath);

    void delete(Long id);

}
