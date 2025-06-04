package com.aravina.cakes.service;

import com.aravina.cakes.model.Role;
import com.aravina.cakes.model.User;
import com.aravina.cakes.repository.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public User findByPhoneAndPassword(String phone, String password) {
        return userRepository.findByPhoneAndPassword(phone, password);
    }

    @Override
    public void create(String fullName, String phone, String password) {
        userRepository.create(fullName, phone, password);
    }

    @Override
    public boolean isUserAuthorized(HttpServletRequest request) {
        HttpSession session = request.getSession();

        return session.getAttribute("userId") != null;
    }

    @Override
    public void update(Long id, String fullName, String phone, Role role) {
        userRepository.update(id, fullName, phone, role);
    }

    @Override
    public void delete(Long id) {
        userRepository.delete(id);
    }

}
