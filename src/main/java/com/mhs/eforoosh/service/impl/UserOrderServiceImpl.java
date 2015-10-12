package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.shopping.UserOrder;
import com.mhs.eforoosh.repository.UserOrderDAO;
import com.mhs.eforoosh.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userOrderService")
@Transactional
public class UserOrderServiceImpl implements UserOrderService {

    @Autowired
    private UserOrderDAO userOrderDAO;

    public UserOrder save(UserOrder userOrder) {
        return userOrderDAO.save(userOrder);
    }

    public UserOrder update(long userOrderId) {
        return userOrderDAO.update(userOrderId);
    }

    public UserOrder viewed(long userOrderId) {
        return userOrderDAO.viewed(userOrderId);
    }

    public UserOrder canceled(long userOrderId) {
        return userOrderDAO.canceled(userOrderId);
    }

    public UserOrder delivered(long userOrderId) {
        return userOrderDAO.delivered(userOrderId);
    }

    public UserOrder done(long userOrderId) {
        return userOrderDAO.done(userOrderId);
    }

    public UserOrder findOne(long userOrderId) {
        return userOrderDAO.findOne(userOrderId);
    }

    @Override
    public UserOrder remove(long objectId) {
        return userOrderDAO.remove(objectId);
    }

    public Iterable<UserOrder> findAll() {
        return userOrderDAO.findAll();
    }

    @Override
    public List<UserOrder> findAll(Integer offset, Integer maxResults) {
        return userOrderDAO.findAll(offset,maxResults);
    }

    public Integer getNotViewedCount() {
        return userOrderDAO.getNotViewedCount();
    }

    @Override
    public Long count() {
        return userOrderDAO.count();
    }

}
