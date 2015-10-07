package com.mhs.eforoosh.repository.impl;

import com.mhs.eforoosh.model.shopping.OrderedItem;
import com.mhs.eforoosh.repository.OrderedItemDAO;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository("orderedItemDAO")
public class OrderedItemDAOImpl implements OrderedItemDAO {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(OrderedItemDAOImpl.class);

    @Resource
    private SessionFactory sessionFactory;

    public OrderedItem save(OrderedItem orderedItem) {
        if (orderedItem.getObjectId() == 0) {
            sessionFactory.getCurrentSession().persist(orderedItem);
            return (OrderedItem) sessionFactory.getCurrentSession().get(OrderedItem.class, orderedItem.getObjectId());
        } else {
            return (OrderedItem) sessionFactory.getCurrentSession().merge(orderedItem);
        }
    }

    public OrderedItem findOne(long orderedItemId) {
        return (OrderedItem) sessionFactory.getCurrentSession().get(OrderedItem.class, orderedItemId);
    }

}
