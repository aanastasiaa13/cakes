package com.aravina.cakes.service;

import com.aravina.cakes.model.CartItem;
import com.aravina.cakes.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public void add(String cakeName, double cakePrice, String cakeImagePath) {
        cartRepository.add(cakeName, cakePrice, cakeImagePath);
    }

    @Override
    public void delete(Long id) {
        cartRepository.delete(id);
    }
}
