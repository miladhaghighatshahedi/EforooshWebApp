package com.mhs.eforoosh.repository.impl;

import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.repository.UserDAO;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by MHS on 11/25/2014.
 */
@Repository("userRepository")
public class UserDAOImpl implements UserDAO {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(UserDAOImpl.class);
    @Resource
    private SessionFactory sessionFactory;

    @Override
    public User add(User user) {
        sessionFactory.getCurrentSession().persist(user);
        return user;
    }

    @Override
    public User update(User user) {
        sessionFactory.getCurrentSession().update(user);
        return user;
    }

    @Override
    public User disableById(long objectId) {
        User user = (User) sessionFactory.getCurrentSession().get(User.class, objectId);
        if (null != user) {
            user.getCredential().setEnabled(false);
            sessionFactory.getCurrentSession().update(user);
        }
        return user;
    }

    @Override
    public User enableById(long objectId) {
        User user = (User) sessionFactory.getCurrentSession().get(User.class, objectId);
        if (null != user) {
            user.getCredential().setEnabled(true);
            sessionFactory.getCurrentSession().update(user);
        }
        return user;
    }

    @Override
    public User removeById(long objectId) {
        User user = (User) sessionFactory.getCurrentSession().get(User.class, objectId);
        if (null != user) {
            sessionFactory.getCurrentSession().delete(user);
        }
        return user;
    }


    @Override
    public User findById(long objectId) {
        User user = (User) sessionFactory.getCurrentSession().get(User.class, objectId);
        return user;
    }

    @Override
    public List<User> findAll() {
        List<User> userList = sessionFactory.getCurrentSession().createQuery("from User").list();
        return userList;
    }

    @Override
    public List<User> findAllClients() {
        List<User> userList = sessionFactory.getCurrentSession().createQuery("from Customer ").list();
        return userList;
    }

    @Override
    public List<User> findAllAuthorities() {
        List<User> userList = sessionFactory.getCurrentSession().createQuery("from Authority ").list();
        return userList;
    }


}
