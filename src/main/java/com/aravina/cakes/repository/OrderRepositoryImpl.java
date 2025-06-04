package com.aravina.cakes.repository;

import com.aravina.cakes.mapper.OrderMapper;
import com.aravina.cakes.model.Order;
import com.aravina.cakes.model.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;


@Repository
public class OrderRepositoryImpl implements OrderRepository {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Order> findAll() {
        return orderMapper.findAll();
    }

    @Override
    public Order findById(Long id) {
        return orderMapper.findById(id);
    }

    @Override
    public void add(String fio, String cakesName, String address, BigDecimal cost, Status status) {
        orderMapper.add(fio, cakesName, address, cost, status);
    }

    @Override
    public void update(Long id, String fio, String cakesName, String address, BigDecimal cost, Status status) {
        orderMapper.update(id, fio, cakesName, address, cost, status);
    }

    @Override
    public void delete(Long id) {
        orderMapper.delete(id);
    }
}
