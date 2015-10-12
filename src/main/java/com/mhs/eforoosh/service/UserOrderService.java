package com.mhs.eforoosh.service;


import com.mhs.eforoosh.model.shopping.UserOrder;

import java.util.List;

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

    List<UserOrder> findAll(Integer offset, Integer maxResults);

    Integer getNotViewedCount();

    Long count();
}
