package com.mhs.eforoosh.web;

import com.mhs.eforoosh.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;
import java.util.Map;

/**
 * Created by milad on 9/14/2015.
 */

@Controller
@RequestMapping("/store")
public class StoreController {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(StoreController.class);

    @Autowired
    private ProductService productService;

    @RequestMapping(method = RequestMethod.GET)
    public String showClientPage(Locale locale, Map<String, Object> model,Integer offset, Integer maxResults) {
        model.put("products", productService.findAll(offset,maxResults));
        model.put("count", productService.count());
        model.put("offset", offset);
        return "store";
    }

    @RequestMapping(value = "/item/{objectId}", method = RequestMethod.GET)
    public String showItem(Model model, @PathVariable long objectId) {
        model.addAttribute("product", productService.findById(objectId));
        return "item";
    }
}
