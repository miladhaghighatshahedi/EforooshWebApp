package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.shopping.Basket;
import com.mhs.eforoosh.model.shopping.OrderedItem;
import com.mhs.eforoosh.model.shopping.UserOrder;
import com.mhs.eforoosh.repository.UserOrderDAO;
import com.mhs.eforoosh.service.BasketService;
import com.mhs.eforoosh.service.OrderedItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.Date;

@Service("basketService")
@Transactional
public class BasketServiceImpl implements BasketService {

    @Autowired
    private UserOrderDAO userOrderDAO;

    @Autowired
    private OrderedItemService orderedItemService;

    public void save(Basket basket, UserOrder userOrder) {
        userOrder.setOrderDate(new Date());
        userOrder = userOrderDAO.save(userOrder);
        Collection<OrderedItem> items = basket.getItems();
        for (OrderedItem orderedItem : items) {
            orderedItem.setUserOrder(userOrder);
            orderedItemService.save(orderedItem);
        }
        basket.clear();
    }

}
