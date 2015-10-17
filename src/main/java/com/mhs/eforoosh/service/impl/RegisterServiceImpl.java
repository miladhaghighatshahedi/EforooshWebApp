package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.repository.RoleDAO;
import com.mhs.eforoosh.repository.UserDAO;
import com.mhs.eforoosh.service.RegisterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by milad on 6/25/2015.
 */
@Service("registerService")
@Transactional
public class RegisterServiceImpl implements RegisterService {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(RegisterServiceImpl.class);

    @Autowired
    private UserDAO userDAO;
    @Autowired
    private RoleDAO roleDAO;

    public void registerCustomer(User customer) {

        Set<Role> customerRoleSet = new HashSet<Role>();
        customerRoleSet.add(roleDAO.findByRoleName("ROLE_CLIENT"));

        customer.setRoleSet(customerRoleSet);

        ShaPasswordEncoder passwordEncoder = new ShaPasswordEncoder(256);
        customer.getCredential().setPassword(passwordEncoder.encodePassword(customer.getCredential().getPassword(), null));
        customer.getCredential().setEnabled(true);
        customer.getCredential().setUser(customer);

        userDAO.add(customer);
    }

    @Override
    public void registerAuthority(User authority) {

        ShaPasswordEncoder passwordEncoder = new ShaPasswordEncoder(256);
        authority.getCredential().setPassword(passwordEncoder.encodePassword(authority.getCredential().getPassword(), null));
        authority.getCredential().setEnabled(true);
        authority.getCredential().setUser(authority);


        userDAO.add(authority);
    }
}
