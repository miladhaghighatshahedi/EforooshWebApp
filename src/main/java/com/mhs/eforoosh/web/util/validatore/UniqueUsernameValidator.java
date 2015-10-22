package com.mhs.eforoosh.web.util.validatore;

import com.mhs.eforoosh.service.CredentialService;
import com.mhs.eforoosh.web.util.annotation.validation.UniqueUsername;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * Created by MHS on 11/29/2014.
 */
public class UniqueUsernameValidator implements ConstraintValidator<UniqueUsername, String> {

    @Autowired
    private CredentialService credentialService;

    @Override
    public void initialize(UniqueUsername constraintAnnotation) {

    }

    @Override
    public boolean isValid(String username, ConstraintValidatorContext context) {

        return credentialService.findByUsername(username) == null;
    }
}
