package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.shopping.OrderedItem;
import com.mhs.eforoosh.repository.OrderedItemDAO;
import com.mhs.eforoosh.service.OrderedItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("orderedItemService")
@Transactional
public class OrderedItemServiceImpl implements OrderedItemService {

    @Autowired
    private OrderedItemDAO orderedItemDAO;

    public OrderedItem save(OrderedItem orderedItem) {
        return orderedItemDAO.save(orderedItem);
    }

    public OrderedItem findOne(long orderedItemId) {
        return orderedItemDAO.findOne(orderedItemId);
    }


}
