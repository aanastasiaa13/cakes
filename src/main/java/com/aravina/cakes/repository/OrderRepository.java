package com.aravina.cakes.repository;

import com.aravina.cakes.model.Order;
import com.aravina.cakes.model.Status;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;

public interface OrderRepository {

    List<Order> findAll();

    Order findById(Long id);

    void add(String fio,
             String cakesName,
             String address,
             BigDecimal cost,
             Status status);

    void delete(Long id);

}
