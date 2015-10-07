package com.mhs.eforoosh.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

@Controller
@RequestMapping("/client")
public class ClientController {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(ClientController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String showClientPage(Locale locale) {
        return "client";
    }


}
