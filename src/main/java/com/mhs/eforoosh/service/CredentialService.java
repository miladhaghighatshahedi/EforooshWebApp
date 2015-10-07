package com.mhs.eforoosh.service;

import com.mhs.eforoosh.model.Credential;
import com.mhs.eforoosh.model.user.User;

/**
 * Created by MHS on 11/27/2014.
 */
public interface CredentialService {
    public Credential add(Credential credential);

    public Credential update(Credential credential);

    public Credential removeById(long objectId);

    public Credential findById(long objectId);

    public Credential findByUsername(String username);

    public User findUserByUsername(String username);

}
