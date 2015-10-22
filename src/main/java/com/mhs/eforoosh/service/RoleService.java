package com.mhs.eforoosh.service;

import com.mhs.eforoosh.model.Role;

import java.util.List;
import java.util.Set;

/**
 * Created by MHS on 11/25/2014.
 */
public interface RoleService {
    public Role add(Role role);

    public Role update(Role role);

    public Role removeById(long objectId);

    public Role findById(long objectId);

    public Set<Role> findAll();

    public Role findByRoleName(String roleName);

    public List<String> findRoleNames();
}
