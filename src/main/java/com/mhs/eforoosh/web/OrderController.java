package com.mhs.eforoosh.web;

import com.mhs.eforoosh.model.shopping.Basket;
import com.mhs.eforoosh.model.shopping.UserOrder;
import com.mhs.eforoosh.service.BasketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("/order")
@SessionAttributes("basket")
public class OrderController {

    @Autowired
    private BasketService basketService;

    @ModelAttribute("userOrder")
    public UserOrder userOrder() {
        UserOrder userOrder = new UserOrder();
        return userOrder;
    }

    @RequestMapping
    public String show() {
        return "order";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String save(@ModelAttribute @Valid UserOrder userOrder, BindingResult bindingResult, @ModelAttribute Basket basket) {
        if (bindingResult.hasErrors()) {
            return "order";
        }
        basketService.save(basket, userOrder);
        return "redirect:/order.html?success=true";
    }

    @RequestMapping(params = {"thanks"})
    public String showThanks() {
        return "order-thanks";
    }

}
