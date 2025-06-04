package com.aravina.cakes.repository;

import com.aravina.cakes.mapper.CartMapper;
import com.aravina.cakes.model.Cake;
import com.aravina.cakes.model.CartItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
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
    public List<CartItem> findCartItemsByUserId(Long id) {
        return cartMapper.findCartItemsByUserId(id);
    }

    @Override
    public Long getCurrentId() {
        return cartMapper.getCurrentId();
    }

    @Override
    public void add(Cake cake) {
        cartMapper.add(cake);
    }

    @Override
    public void createCartItemLink(Long userId, Long cartItemId) {
        cartMapper.createCartItemLink(userId, cartItemId);
    }

    @Override
    public void delete(Long id) {
        cartMapper.delete(id);
    }
}
