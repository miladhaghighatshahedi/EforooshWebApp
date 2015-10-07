package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.Credential;
import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.repository.CredentialDAO;
import com.mhs.eforoosh.service.CredentialService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by MHS on 11/27/2014.
 */
@Service("credentialService")
@Transactional
public class CredentialServiceImpl implements CredentialService {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(CredentialServiceImpl.class);

    @Autowired
    private CredentialDAO credentialDAO;

    @Override
    public Credential add(Credential credential) {
        Credential credential1 = credentialDAO.add(credential);
        return credential1;
    }

    @Override
    public Credential update(Credential credential) {
        Credential credential1 = credentialDAO.update(credential);
        return credential1;
    }

    @Override
    public Credential removeById(long objectId) {
        Credential credential = credentialDAO.removeById(objectId);
        return credential;
    }

    @Override
    public Credential findById(long objectId) {
        Credential credential = credentialDAO.findById(objectId);
        return credential;
    }

    @Override
    public Credential findByUsername(String username) {
        Credential credential = credentialDAO.findByUsername(username);
        return credential;
    }

    @Override
    public User findUserByUsername(String username) {
        User user = credentialDAO.findUserByUsername(username);
        return user;
    }
}
