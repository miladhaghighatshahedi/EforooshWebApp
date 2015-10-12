package com.mhs.eforoosh.repository;

import com.mhs.eforoosh.model.shopping.UserOrder;

import java.util.List;

public interface UserOrderDAO {
    UserOrder save(UserOrder userOrder);

    UserOrder update(long userOrderId);

    UserOrder viewed(long userOrderId);

    UserOrder canceled(long userOrderId);

    UserOrder delivered(long userOrderId);

    UserOrder done(long userOrderId);

    UserOrder findOne(long userOrderId);

    UserOrder remove(long objectId);

    List<UserOrder> findAll();

    Integer getNotViewedCount();

    List<UserOrder> findAll(Integer offset, Integer maxResults);

    Long count();


}
