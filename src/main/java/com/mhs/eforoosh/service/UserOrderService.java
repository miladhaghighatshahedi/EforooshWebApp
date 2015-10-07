package com.mhs.eforoosh.service;


import com.mhs.eforoosh.model.shopping.UserOrder;

public interface UserOrderService {
    UserOrder save(UserOrder userOrder);

    UserOrder update(long userOrderId);

    UserOrder viewed(long userOrderId);

    UserOrder canceled(long userOrderId);

    UserOrder delivered(long userOrderId);

    UserOrder done(long userOrderId);

    UserOrder findOne(long userOrderId);

    UserOrder remove(long objectId);

    Iterable<UserOrder> findAll();

    Integer getNotViewedCount();
}
