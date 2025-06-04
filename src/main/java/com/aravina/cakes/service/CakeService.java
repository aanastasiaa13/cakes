package com.aravina.cakes.service;

import com.aravina.cakes.model.Cake;

import java.util.List;

public interface CakeService {

    List<Cake> findAll();

    Cake findById(Long id);

}
