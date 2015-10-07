package com.mhs.eforoosh.repository;

import com.mhs.eforoosh.model.shopping.OrderedItem;

public interface OrderedItemDAO {
    OrderedItem save(OrderedItem orderedItem);

    OrderedItem findOne(long orderedItemId);
}
