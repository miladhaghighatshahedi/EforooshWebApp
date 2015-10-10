package com.mhs.eforoosh.repository.impl;


import com.mhs.eforoosh.model.shopping.OrderedItem;
import com.mhs.eforoosh.model.shopping.UserOrder;
import com.mhs.eforoosh.repository.UserOrderDAO;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("userOrderDAO")
public class UserOrderDAOImpl implements UserOrderDAO {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(UserOrderDAOImpl.class);

    @Resource
    private SessionFactory sessionFactory;

    public UserOrder save(UserOrder userOrder) {
        if (userOrder.getObjectId() == 0) {
            userOrder.setCanceled(false);
            userOrder.setViewed(false);
            userOrder.setDelivered(false);
            userOrder.setDone(false);
            sessionFactory.getCurrentSession().save(userOrder);
            return (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, userOrder.getObjectId());
        } else {
            return (UserOrder) sessionFactory.getCurrentSession().merge(userOrder);
        }
    }

    @Override
    public UserOrder update(long userOrderId) {
        UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, userOrderId);
        if (null != userOrder) {
            sessionFactory.getCurrentSession().merge(userOrder);
        }
        return userOrder;
    }

    public UserOrder viewed(long userOrderId) {
        UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, userOrderId);
        if (null != userOrder) {
            userOrder.setViewed(true);
            sessionFactory.getCurrentSession().merge(userOrder);
        }
        return userOrder;
    }

    public UserOrder canceled(long userOrderId) {
        UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, userOrderId);
        if (null != userOrder) {
            userOrder.setCanceled(true);
            sessionFactory.getCurrentSession().merge(userOrder);
        }
        return userOrder;
    }

    public UserOrder delivered(long userOrderId) {
        UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, userOrderId);
        if (null != userOrder) {
            userOrder.setDelivered(true);
            sessionFactory.getCurrentSession().merge(userOrder);
        }
        return userOrder;
    }

    public UserOrder done(long userOrderId) {
        UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, userOrderId);
        if (null != userOrder) {
            userOrder.setDone(true);
            sessionFactory.getCurrentSession().merge(userOrder);
        }
        return userOrder;
    }

    public UserOrder findOne(long userOrderId) {
        return (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, userOrderId);
    }

    public UserOrder remove(long objectId) {
        UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().get(UserOrder.class, objectId);
        if (null != userOrder) {
            sessionFactory.getCurrentSession().delete(userOrder);
        }
        return userOrder;
    }

    public List<UserOrder> findAll() {
        List<UserOrder> userOrders =(List<UserOrder>) sessionFactory.getCurrentSession().getNamedQuery("FIND_ALL_FETCH").list();
        for (UserOrder userOrder : userOrders) {
            Hibernate.initialize(userOrder.getOrderedItems());
            for(OrderedItem orderedItem :userOrder.getOrderedItems())
            {
                Hibernate.initialize(orderedItem.getProduct());
            }
        }
        return userOrders;
    }

    public Integer getNotViewedCount() {

        Query query = sessionFactory.getCurrentSession().getNamedQuery("FIND_NOT_VIEWED");
        Integer count = (Integer) query.uniqueResult();
        return count;

    }


}
