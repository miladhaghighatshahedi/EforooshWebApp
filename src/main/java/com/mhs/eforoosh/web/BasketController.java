package com.mhs.eforoosh.web;

import com.mhs.eforoosh.model.shopping.Basket;
import com.mhs.eforoosh.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/basket")
@SessionAttributes("basket")
public class BasketController {

    @Autowired
    private ProductService productService;

    @ModelAttribute("basket")
    public Basket construct() {
        return new Basket();
    }

    @RequestMapping
    public String show(Model model, HttpSession session) {
        return "basket";
    }

    @RequestMapping("/add")
    public String add(@RequestParam long id, @RequestParam int quantity, @ModelAttribute Basket basket) {
        basket.add(productService.findById(id), quantity);
        return "redirect:/store.html";
    }

    @RequestMapping("/remove/{objectId}")
    public String remove(@PathVariable long objectId, @ModelAttribute Basket basket) {
        basket.remove(objectId);
        return "redirect:/basket.html";
    }

}
