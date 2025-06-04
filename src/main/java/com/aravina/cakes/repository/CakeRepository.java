package com.aravina.cakes.repository;

import com.aravina.cakes.model.Cake;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CakeRepository {

    List<Cake> findAll();

    Cake findById(Long id);

}
