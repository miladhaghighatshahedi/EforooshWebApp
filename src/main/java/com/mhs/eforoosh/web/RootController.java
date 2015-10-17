package com.mhs.eforoosh.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
@RequestMapping("/")
public class RootController {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(RootController.class);

    @RequestMapping("index")
    public String index(Locale locale) {
        logger.info("Welcome home! The client locale is {}.", locale);
        return "index";
    }

    @RequestMapping("login")
    public String login(Locale locale) {

        logger.info("Welcome home! The client locale is {}.", locale);
        return "login";
    }

    @RequestMapping("logout")
    public String logout(Locale locale) {
        logger.info("Welcome home! The client locale is {}.", locale);
        return "login";
    }

    @RequestMapping("user/user")
    public String showUser(Locale locale) {
        return "user";
    }


    @RequestMapping("admin/admin")
    public String showAdmin(Locale locale) {
        return "admin";
    }


    @RequestMapping("passwordRecovery")
    public String showPasswordRecovery(Locale locale) {
        return "passwordRecovery";
    }

    @RequestMapping("template")
    public String showTemplate(Locale locale) {
        logger.info("Welcome home! The client locale is {}.", locale);
        return "template";
    }


}
