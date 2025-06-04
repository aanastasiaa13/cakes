package com.aravina.cakes.mapper;

import com.aravina.cakes.model.Order;
import com.aravina.cakes.model.Status;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;

@Mapper
public interface OrderMapper {

    List<Order> findAll();

    Order findById(@Param("id") Long id);

    void add(@Param("fio") String fio,
             @Param("cakesName") String cakesName,
             @Param("address") String address,
             @Param("cost") BigDecimal cost,
             @Param("status") Status status);

    void delete(@Param("id") Long id);

}
