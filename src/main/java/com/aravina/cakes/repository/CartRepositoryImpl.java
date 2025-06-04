package com.aravina.cakes.repository;

import com.aravina.cakes.mapper.CartMapper;
import com.aravina.cakes.model.CartItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class CartRepositoryImpl implements CartRepository {

    @Autowired
    private CartMapper cartMapper;

    @Override
    public List<CartItem> findAll() {
        return cartMapper.findAll();
    }

    @Override
    public void add(String cakeName, double cakePrice, String cakeImagePath) {
        cartMapper.add(cakeName, cakePrice, cakeImagePath);
    }

    @Override
    public void delete(Long id) {
        cartMapper.delete(id);
    }
}
