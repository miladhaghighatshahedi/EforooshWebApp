package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.repository.RoleDAO;
import com.mhs.eforoosh.service.RoleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by MHS on 11/27/2014.
 */
@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(RoleServiceImpl.class);
    @Autowired
    private RoleDAO roleDAO;

    @Override
    public Role add(Role role) {
        Role role1 = roleDAO.add(role);
        return role1;
    }

    @Override
    public Role update(Role role) {
        Role role1 = roleDAO.update(role);
        return role1;
    }

    @Override
    public Role removeById(long objectId) {
        Role role = roleDAO.removeById(objectId);
        return role;
    }

    @Override
    public Role findById(long objectId) {
        Role role = roleDAO.findById(objectId);
        return role;
    }

    @Override
    public List<Role> findAll() {
        List<Role> roles = roleDAO.findAll();
        return roles;
    }

    public List<Role> findAllClean() {
        List<Role> roles = roleDAO.findAllClean();
        return roles;
    }

    @Override
    public Role findByRoleName(String roleName) {
        Role role = roleDAO.findByRoleName(roleName);
        return role;
    }

    @Override
    public List<String> findRoleNames() {
        List<String> roleNames = roleDAO.findRoleNames();
        return roleNames;
    }
}
