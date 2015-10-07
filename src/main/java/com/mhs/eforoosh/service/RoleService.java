package com.mhs.eforoosh.service;

import com.mhs.eforoosh.model.Role;

import java.util.List;

/**
 * Created by MHS on 11/25/2014.
 */
public interface RoleService {
    public Role add(Role role);

    public Role update(Role role);

    public Role removeById(long objectId);

    public Role findById(long objectId);

    public List<Role> findAll();

    List<Role> findAllClean();

    public Role findByRoleName(String roleName);

    public List<String> findRoleNames();
}
