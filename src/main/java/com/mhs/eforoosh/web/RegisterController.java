package com.mhs.eforoosh.web;


import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.model.user.Authority;
import com.mhs.eforoosh.model.user.Customer;
import com.mhs.eforoosh.service.CredentialService;
import com.mhs.eforoosh.service.RegisterService;
import com.mhs.eforoosh.service.RoleService;
import com.mhs.eforoosh.web.util.editors.RoleEditor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.*;

/**
 * Created by milad on 6/23/2015.
 */

@Controller
public class RegisterController {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);

    @Autowired
    private RegisterService registerService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private CredentialService credentialService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Role.class, new RoleEditor());
    }

    @RequestMapping("/register")
    public String showCustomerRegister(Locale locale, Map<String, Object> model) {
        Customer customer = new Customer();
        model.put("customer", customer);
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomer(@Valid @ModelAttribute("customer") Customer customer,BindingResult result) {
        if(result.hasErrors()){
           return "register";
        }
        registerService.registerCustomer(customer);
        return "redirect:/register.html?success=true";
    }

    @RequestMapping("admin/registerAuthority")
    public String showAuthorityRegister(Locale locale, Map<String, Object> model) {
        Authority authority = new Authority();
            model.put("authority", authority);
        Set<Role> roles = roleService.findAll();
            model.put("roles", roles);
        return "register-authority";
    }

    @RequestMapping(value = "admin/registerAuthority", method = RequestMethod.POST)
    public String registerAuthority(@ModelAttribute("authority") Authority authority) {
        registerService.registerAuthority(authority);
        return "redirect:/admin/registerAuthority.html?registerSuccess=true";
    }

    @RequestMapping("/register/alreadyExistsCustomer")
    public @ResponseBody String alreadyExistsCustomer(@RequestParam String username) {
        Boolean available = credentialService.findByUsername(username) == null;
        return available.toString();
    }

    @RequestMapping(value = "admin/registerAuthority/roles", method = RequestMethod.GET)
    public @ResponseBody Set<Role> findAllRoles() {
        return roleService.findAll();
    }

    @RequestMapping("admin/registerAuthority/alreadyExistsAuthority")
    public @ResponseBody String alreadyExistsAuthority(@RequestParam String username) {
        Boolean available = credentialService.findByUsername(username) == null;
        return available.toString();
    }

    @RequestMapping(value = "admin/findAllRoles", method = RequestMethod.GET)
    @ResponseBody
    public Set<Role> findAllCategories() {
        return roleService.findAll();
    }


}
