package com.aravina.cakes.service;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.model.CartItem;
import com.aravina.cakes.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartRepository cartRepository;

    @Override
    public List<CartItem> findAll() {
        return cartRepository.findAll();
    }

    @Override
    public List<CartItem> findCartItemsByUserId(Long id) {
        return cartRepository.findCartItemsByUserId(id);
    }

    @Override
    public Long getCurrentId() {
        return cartRepository.getCurrentId();
    }

    @Override
    public void add(Cake cake) {
        cartRepository.add(cake);
    }

    @Override
    public void createCartItemLink(Long userId, Long cartItemId) {
        cartRepository.createCartItemLink(userId, cartItemId);
    }

    @Override
    public void delete(Long id) {
        cartRepository.delete(id);
    }
}
