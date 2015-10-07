package com.mhs.eforoosh.service;

import com.mhs.eforoosh.model.shopping.Basket;
import com.mhs.eforoosh.model.shopping.UserOrder;

public interface BasketService {

    void save(Basket basket, UserOrder userOrder);
}
