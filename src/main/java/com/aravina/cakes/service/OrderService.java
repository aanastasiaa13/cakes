package com.aravina.cakes.service;

import com.aravina.cakes.model.Order;
import com.aravina.cakes.model.Status;

import java.math.BigDecimal;
import java.util.List;

public interface OrderService {

    List<Order> findAll();

    Order findById(Long id);

    void add(String fio,
             String cakesName,
             String address,
             BigDecimal cost,
             Status status);

    void update(Long id,
                String fio,
                String cakesName,
                String address,
                BigDecimal cost,
                Status status);

    void delete(Long id);

}
