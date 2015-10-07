package com.mhs.eforoosh.model.shopping;

import com.mhs.eforoosh.model.product.Product;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;

public class Basket implements Serializable {

    private static final long serialVersionUID = 1L;

    private HashMap<Long, OrderedItem> items = new HashMap<Long, OrderedItem>();

    public void add(Product product, int quantity) {
        long itemId = product.getObjectId();
        if (items.containsKey(itemId)) {
            OrderedItem orderedItem = items.get(itemId);
            orderedItem.setQuantity(orderedItem.getQuantity() + quantity);
        } else {
            OrderedItem orderedItem = new OrderedItem();
            orderedItem.setProduct(product);
            orderedItem.setQuantity(quantity);
            items.put(product.getObjectId(), orderedItem);
        }
    }

    public Collection<OrderedItem> getItems() {
        return items.values();
    }

    public void remove(long itemId) {
        items.remove(itemId);
    }

    public void clear() {
        items.clear();
    }
}
