package com.mhs.eforoosh.service;

import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.model.user.User;

import java.util.Set;

/**
 * Created by MHS on 11/25/2014.
 */
public interface RegisterService {
    void registerCustomer(User customer);

    void registerAuthority(User authority);
}
