package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.repository.UserDAO;
import com.mhs.eforoosh.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by MHS on 11/25/2014.
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);
    @Autowired
    private UserDAO userDAO;

    @Override
    public User add(User user) {
        User user1 = userDAO.add(user);
        return user1;
    }

    @Override
    public User update(User user) {
        User user1 = userDAO.update(user);
        return user1;
    }

    @Override
    public User removeById(long objectId) {
        User user = userDAO.removeById(objectId);
        return user;
    }

    @Override
    public User disableById(long objectId) {
        return userDAO.disableById(objectId);
    }

    @Override
    public User enableById(long objectId) {
        return userDAO.enableById(objectId);
    }

    @Override
    public User findById(long objectId) {
        User user = userDAO.findById(objectId);
        return user;
    }

    @Override
    public List<User> findAll() {
        List<User> users = userDAO.findAll();
        return users;
    }

    @Override
    public List<User> findAllClients() {
        List<User> clients = userDAO.findAllClients();
        return clients;
    }

    @Override
    public List<User> findAllAuthorities() {
        List<User> authorities = userDAO.findAllAuthorities();
        return authorities;
    }

}
