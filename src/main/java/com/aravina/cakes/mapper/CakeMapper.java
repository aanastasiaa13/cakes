package com.aravina.cakes.mapper;

import com.aravina.cakes.model.Cake;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CakeMapper {

    List<Cake> findAll();

    Cake findById(@Param("id") Long id);

}
