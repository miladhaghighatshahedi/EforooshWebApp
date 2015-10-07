package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.Credential;
import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.model.user.Authority;
import com.mhs.eforoosh.model.user.Customer;
import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.repository.UserDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

import javax.annotation.PostConstruct;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by MHS on 12/1/2014.
 */
//@Service
public class InitDatabaseService {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(InitDatabaseService.class);
    @Autowired
    @Qualifier("transactionManager")
    protected PlatformTransactionManager transactionManager;
    @Autowired
    private UserDAO userDAO;


    @Transactional
    @PostConstruct
    public void init() {
        TransactionTemplate transactionTemplate = new TransactionTemplate(transactionManager);
        transactionTemplate.execute(new TransactionCallbackWithoutResult() {
            @Override
            protected void doInTransactionWithoutResult(TransactionStatus transactionStatus) {

                Role adminRole = new Role();
                adminRole.setRoleName("ROLE_ADMIN");
                Role userRole = new Role();
                userRole.setRoleName("ROLE_USER");
                Role clientRole = new Role();
                clientRole.setRoleName("ROLE_CLIENT");


                Set<Role> adminRoleSet = new HashSet<Role>();
                adminRoleSet.add(adminRole);
                adminRoleSet.add(userRole);
                adminRoleSet.add(clientRole);

                Set<Role> customerRoleSet = new HashSet<Role>();
                customerRoleSet.add(clientRole);


                User admin = new Authority();
                Credential adminCredential = new Credential();

                User customer = new Customer();
                Credential userCredential = new Credential();

                adminCredential.setEnabled(true);
                adminCredential.setUsername("admin");
                ShaPasswordEncoder encoder = new ShaPasswordEncoder(256);
                adminCredential.setPassword(encoder.encodePassword("admin", null));
                adminCredential.setUser(admin);
                admin.setCredential(adminCredential);
                admin.setRoleSet(adminRoleSet);

                userCredential.setEnabled(true);
                userCredential.setUsername("user");
                ShaPasswordEncoder encoder1 = new ShaPasswordEncoder(256);
                userCredential.setPassword(encoder1.encodePassword("user", null));
                userCredential.setUser(customer);
                customer.setCredential(userCredential);
                customer.setRoleSet(customerRoleSet);


                userDAO.add(admin);
                userDAO.add(customer);
            }
        });
    }
}

/**
 *  Role roleAdmin = new Role();
 roleAdmin.setRoleName("ROLE_ADMIN");
 roleDAO.add(roleAdmin);

 Role userRole = new Role();
 userRole.setRoleName("ROLE_USER");
 roleDAO.add(userRole);

 Role clientRole = new Role();
 clientRole.setRoleName("ROLE_CLIENT");
 roleDAO.add(clientRole);

 List<Role> roleList = roleDAO.findAllRoles();
 Set<Role> roleSet = new HashSet<Role>(roleList);


 User admin = new AuthorityUser();
 Credential credential = new Credential();

 credential.setEnabled(true);
 credential.setUsername("admin");
 credential.setPassword("admin");
 credential.setUser(admin);
 admin.setCredential(credential);
 admin.setRoleSet(roleSet);

 userDAO.add(admin);
 * */