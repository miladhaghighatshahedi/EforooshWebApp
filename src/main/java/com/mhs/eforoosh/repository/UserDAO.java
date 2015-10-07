package com.mhs.eforoosh.repository;

import com.mhs.eforoosh.model.user.User;

import java.util.List;

/**
 * Created by MHS on 11/25/2014.
 */
public interface UserDAO {

    public User add(User user);

    public User update(User user);

    public User removeById(long objectId);

    public User disableById(long objectId);

    public User enableById(long objectId);

    public User findById(long objectId);

    public List<User> findAll();

    public List<User> findAllClients();

    public List<User> findAllAuthorities();

}
