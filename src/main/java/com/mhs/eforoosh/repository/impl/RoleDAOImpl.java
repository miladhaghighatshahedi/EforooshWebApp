package com.mhs.eforoosh.repository.impl;

import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.repository.RoleDAO;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


/**
 * Created by MHS on 11/27/2014.
 */
@Repository("roleRepository")
public class RoleDAOImpl implements RoleDAO {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(RoleDAOImpl.class);
    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Role add(Role role) {
        if(role.getObjectId() == 0) {
            role.setDateAdded(new Date());
            sessionFactory.getCurrentSession().persist(role);
        }
        else
        {
            sessionFactory.getCurrentSession().merge(role);
        }
        return role;
    }

    @Override
    public Role update(Role role) {
        sessionFactory.getCurrentSession().update(role);
        return role;
    }

    @Override
    public Role removeById(long objectId) {
        Role role = (Role) sessionFactory.getCurrentSession().load(Role.class, objectId);
        if (null != role) {
            sessionFactory.getCurrentSession().delete(role);
        }
        return role;
    }

    @Override
    public Role findById(long objectId) {
        Role role = (Role) sessionFactory.getCurrentSession().get(Role.class, objectId);
        return role;
    }

    @Override
    public List<Role> findAllByJoinFetch() {
        Query query = sessionFactory.getCurrentSession().createQuery("SELECT  r FROM Role r JOIN FETCH r.userSet order by r.objectId asc");
        List<Role> roleList = (List<Role> )query.list();
        return roleList;
    }

    public Set<Role> findAll() {
        List<Role> roleList = sessionFactory.getCurrentSession().getNamedQuery("findAllRoles").list();

        return new HashSet<Role>(roleList);
    }

    @Override
    public Role findByRoleName(String roleName) {
        Role role = (Role) sessionFactory.getCurrentSession().getNamedQuery("findByRoleName").setParameter("roleName", roleName).uniqueResult();
        return role;

    }

    @Override
    public List<String> findRoleNames() {
        Query query = sessionFactory.getCurrentSession().createQuery("SELECT r.roleName FROM Role r");
        query.setCacheable(true);
        List<String> roleNames = query.list();
        return roleNames;
    }

}
