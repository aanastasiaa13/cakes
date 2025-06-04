package com.aravina.cakes.service;

import com.aravina.cakes.model.Order;
import com.aravina.cakes.model.Status;
import com.aravina.cakes.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Override
    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public Order findById(Long id) {
        return orderRepository.findById(id);
    }

    @Override
    public void add(String fio, String cakesName, String address, BigDecimal cost, Status status) {
        orderRepository.add(fio, cakesName, address, cost, status);
    }

    @Override
    public void update(Long id, String fio, String cakesName, String address, BigDecimal cost, Status status) {
        orderRepository.update(id, fio, cakesName, address, cost, status);
    }

    @Override
    public void delete(Long id) {
        orderRepository.delete(id);
    }
}
