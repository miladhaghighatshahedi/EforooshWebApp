package com.mhs.eforoosh.repository.impl;

import com.mhs.eforoosh.model.Credential;
import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.repository.CredentialDAO;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * Created by MHS on 11/25/2014.
 */
@Repository("credentialRepository")
public class CredentialDAOImpl implements CredentialDAO {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(CredentialDAOImpl.class);

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Credential add(Credential credential) {
        sessionFactory.getCurrentSession().persist(credential);
        return credential;
    }

    @Override
    public Credential update(Credential credential) {
        sessionFactory.getCurrentSession().update(credential);
        return credential;
    }

    @Override
    public Credential removeById(long objectId) {
        Credential credential = (Credential) sessionFactory.getCurrentSession().load(Credential.class, objectId);
        if (null != credential) {
            credential.setEnabled(false);
            sessionFactory.getCurrentSession().update(credential);
        }
        return credential;
    }

    @Override
    public Credential findById(long objectId) {
        Credential credential = (Credential) sessionFactory.getCurrentSession().load(Credential.class, objectId);
        return credential;
    }

    @Override
    public Credential findByUsername(String username) {
        Credential credential = (Credential) sessionFactory.getCurrentSession().getNamedQuery("findCredentialByUsername").setParameter("username", username).uniqueResult();
        return credential;
    }

    @Override
    public User findUserByUsername(String username) {
        User user = (User) sessionFactory.getCurrentSession().getNamedQuery("findUserByUsername").setString("username", username).uniqueResult();
        return user;
    }
}
