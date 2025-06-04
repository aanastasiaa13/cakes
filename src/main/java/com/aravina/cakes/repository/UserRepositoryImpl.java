package com.aravina.cakes.repository;

import com.aravina.cakes.mapper.UserMapper;
import com.aravina.cakes.model.Role;
import com.aravina.cakes.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

    @Override
    public User findById(Long id) {
        return userMapper.findById(id);
    }

    @Override
    public User findByPhoneAndPassword(String phone, String password) {
        return userMapper.findByPhoneAndPassword(phone, password);
    }

    @Override
    public void create(String fullName, String phone, String password) {
        userMapper.create(fullName, phone, password);
    }

    @Override
    public void update(Long id, String fullName, String phone, Role role) {
        userMapper.update(id, fullName, phone, role);
    }

    @Override
    public void delete(Long id) {
        userMapper.delete(id);
    }
}
