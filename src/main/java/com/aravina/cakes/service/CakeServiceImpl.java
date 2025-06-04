package com.aravina.cakes.service;

import com.aravina.cakes.model.Cake;
import com.aravina.cakes.repository.CakeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CakeServiceImpl implements CakeService {

    @Autowired
    private CakeRepository cakeRepository;

    @Override
    public List<Cake> findAll() {
        return cakeRepository.findAll();
    }

    @Override
    public Cake findById(Long id) {
        return cakeRepository.findById(id);
    }
}
