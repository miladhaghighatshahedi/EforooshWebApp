package com.mhs.eforoosh.service;


import com.mhs.eforoosh.model.shopping.OrderedItem;

public interface OrderedItemService {
    OrderedItem save(OrderedItem orderedItem);

    OrderedItem findOne(long orderedItemId);
}
