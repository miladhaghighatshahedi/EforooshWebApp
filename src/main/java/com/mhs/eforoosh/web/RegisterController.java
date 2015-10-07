package com.mhs.eforoosh.web;


import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.model.user.Authority;
import com.mhs.eforoosh.model.user.Customer;
import com.mhs.eforoosh.service.CredentialService;
import com.mhs.eforoosh.service.RegisterService;
import com.mhs.eforoosh.service.RoleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Created by milad on 6/23/2015.
 */

@Controller
@RequestMapping("")
public class RegisterController {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);

    @Autowired
    private RegisterService registerService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private CredentialService credentialService;

    @RequestMapping("/register")
    public String showCustomerRegister(Locale locale, Map<String, Object> model) {
        Customer customer = new Customer();
        model.put("customer", customer);
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomer(@Valid @ModelAttribute("customer") Customer customer) {

        registerService.registerCustomer(customer);
        return "redirect:/register.html?success=true";
    }

    @RequestMapping("/register/alreadyExistsCustomer")
    public
    @ResponseBody
    String alreadyExistsCustomer(@RequestParam String username) {
        Boolean available = credentialService.findByUsername(username) == null;
        return available.toString();
    }

    @RequestMapping("admin/registerAuthority")
    public String showAuthorityRegister(Locale locale, Model model) {
        if (!model.containsAttribute("authority") || !model.containsAttribute("roles")) {
            Authority authority = new Authority();
            model.addAttribute("authority", authority);
            model.addAttribute("roles", roleService.findAllClean());
        }
        return "register-authority";
    }

    @RequestMapping(value = "admin/registerAuthority/roles", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Role> findAllRoles() {
        return roleService.findAll();
    }

    @RequestMapping(value = "admin/registerAuthority", method = RequestMethod.POST)
    public String registerAuthority(@ModelAttribute("authority") Authority authority) {
        registerService.registerAuthority(authority);
        return "redirect:/admin/registerAuthority.html?registerSuccess=true";
    }

    @RequestMapping("admin/registerAuthority/alreadyExistsAuthority")
    public
    @ResponseBody
    String alreadyExistsAuthority(@RequestParam String username) {
        Boolean available = credentialService.findByUsername(username) == null;
        return available.toString();
    }


}
