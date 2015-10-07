package com.mhs.eforoosh.web.util.annotation.validation;

import com.mhs.eforoosh.web.util.validatore.UniqueUsernameValidator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

/**
 * Created by MHS on 11/29/2014.
 */
@Target({FIELD})
@Retention(RUNTIME)
@Constraint(validatedBy = {UniqueUsernameValidator.class})
public @interface UniqueUsername {

    String message();

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
