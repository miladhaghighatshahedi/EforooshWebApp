package com.mhs.eforoosh.web.util.validatore;

import com.mhs.eforoosh.service.RoleService;
import com.mhs.eforoosh.web.util.annotation.validation.UniqueRolename;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * Created by MHS on 11/29/2014.
 */
public class UniqueRoleNameValidator implements ConstraintValidator<UniqueRolename, String> {
    @Autowired
    private RoleService roleService;

    @Override
    public void initialize(UniqueRolename constraintAnnotation) {

    }

    @Override
    public boolean isValid(String roleName, ConstraintValidatorContext context) {
        if (roleService == null) {
            return true;
        }
        return roleService.findByRoleName(roleName) == null;
    }
}
