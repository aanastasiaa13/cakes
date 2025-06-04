package com.aravina.cakes.repository;

import com.aravina.cakes.mapper.CakeMapper;
import com.aravina.cakes.model.Cake;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CakeRepositoryImpl implements CakeRepository {

    @Autowired
    private CakeMapper cakeMapper;

    @Override
    public List<Cake> findAll() {
        return cakeMapper.findAll();
    }

    @Override
    public Cake findById(Long id) {
        return cakeMapper.findById(id);
    }
}
