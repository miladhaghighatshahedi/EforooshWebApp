package com.mhs.eforoosh.model;

import com.mhs.eforoosh.model.user.Customer;

/**
 * Created by milad on 5/9/2015.
 */
public class CustomerAddress extends Address {
    private Customer customer;

    public CustomerAddress() {
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
