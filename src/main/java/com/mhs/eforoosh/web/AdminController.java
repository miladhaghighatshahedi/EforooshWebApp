package com.mhs.eforoosh.web;

import com.mhs.eforoosh.report.service.JasperReportOrderService;
import com.mhs.eforoosh.report.service.common.JasperReportDownloadService;
import com.mhs.eforoosh.service.CredentialService;
import com.mhs.eforoosh.service.RoleService;
import com.mhs.eforoosh.service.UserOrderService;
import com.mhs.eforoosh.service.UserService;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JRSortField;
import net.sf.jasperreports.engine.design.JRDesignSortField;
import net.sf.jasperreports.engine.type.SortFieldTypeEnum;
import net.sf.jasperreports.engine.type.SortOrderEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/**
 * Created by MHS on 11/27/2014.
 */
@Controller
public class AdminController {
    public static final String ORDER_TEMPLATE = "/reports/order_detail.jasper";
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
    @Autowired
    private CredentialService credentialService;
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private UserOrderService userOrderService;
    @Autowired
    private JasperReportDownloadService jasperReportDownloadService;
    @Autowired
    private JasperReportOrderService jasperReportOrderService;


    @RequestMapping(value = "admin/administration", method = RequestMethod.GET)
    public String administration(Locale locale) {
        return "administration";
    }

    @RequestMapping(value = "admin/users", method = RequestMethod.GET)
    public String users(Locale locale, Model model) {
        model.addAttribute("users", userService.findAll());
        return "users";
    }

    @RequestMapping(value = "admin/users/remove/{userId}", method = RequestMethod.GET)
    public String removeUser(@PathVariable long userId) {
        userService.removeById(userId);
        return "redirect:/admin/users.html?removedSuccess=true";
    }

    @RequestMapping(value = "admin/users/disable/{userId}", method = RequestMethod.GET)
    public String disableUser(@PathVariable long userId) {
        userService.disableById(userId);
        return "redirect:/admin/users.html?disableSuccess=true";
    }

    @RequestMapping(value = "admin/users/enable/{userId}", method = RequestMethod.GET)
    public String enableUser(@PathVariable long userId) {
        userService.enableById(userId);
        return "redirect:/admin/users.html?enableSuccess=true";
    }

    @RequestMapping(value = "admin/users/{id}", method = RequestMethod.GET)
    public String users(Locale locale, Model model, @PathVariable long id) {
        model.addAttribute("user", userService.findById(id));
        return "user-details";
    }

    @RequestMapping(value = "admin/authorities", method = RequestMethod.GET)
    public String authorities(Locale locale, Model model) {
        model.addAttribute("authorities", userService.findAllAuthorities());
        return "authorities";
    }

    @RequestMapping(value = "admin/authorities/{id}", method = RequestMethod.GET)
    public String authorities(Locale locale, Model model, @PathVariable long id) {
        model.addAttribute("authority", userService.findById(id));
        return "authority-details";
    }

    @RequestMapping(value = "admin/orders", method = RequestMethod.GET)
    public String show(Model model) {
        model.addAttribute("userOrders", userOrderService.findAll());
        return "user-orders";
    }

    @RequestMapping(value = "admin/orders/remove/{objectId}", method = RequestMethod.GET)
    public String removeUserOrder(@PathVariable long objectId) {
        userOrderService.remove(objectId);
        return "redirect:/admin/orders.html?success=true";
    }

    @RequestMapping(value = "admin/orders/viewed/{objectId}", method = RequestMethod.GET)
    public String userOrderViewed(@PathVariable long objectId) {
        userOrderService.viewed(objectId);
        return "redirect:/admin/orders.html?viewedSuccess=true";
    }

    @RequestMapping(value = "admin/orders/canceled/{objectId}", method = RequestMethod.GET)
    public String userOrderCanceled(@PathVariable long objectId) {
        userOrderService.canceled(objectId);
        return "redirect:/admin/orders.html?canceledSuccess=true";
    }

    @RequestMapping(value = "admin/orders/delivered/{objectId}", method = RequestMethod.GET)
    public String userOrderDelivered(@PathVariable long objectId) {
        userOrderService.delivered(objectId);
        return "redirect:/admin/orders.html?deliveredSuccess=true";
    }

    @RequestMapping(value = "admin/orders/done/{objectId}", method = RequestMethod.GET)
    public String userOrderDone(@PathVariable long objectId) {
        userOrderService.done(objectId);
        return "redirect:/admin/orders.html?doneSuccess=true";
    }

    @RequestMapping("admin/alreadyExistsRole")
    public
    @ResponseBody
    String alreadyExistsRole(@RequestParam String roleName) {
        Boolean available = roleService.findByRoleName(roleName) == null;
        return available.toString();
    }

    @RequestMapping("admin/alreadyExistsUser")
    public
    @ResponseBody
    String alreadyExistsUser(@RequestParam String username) {
        Boolean available = credentialService.findByUsername(username) == null;
        return available.toString();
    }


    // GET ORDER REPORT

    @RequestMapping(value = "admin/orders/pdf/orderReport", method = RequestMethod.GET)
    public void getPdfReportAllC(HttpServletResponse response) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("user_order_id");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("pdf", "pdf", response, ORDER_TEMPLATE, jasperReportOrderService.getDataSource(), "OrderReport.pdf", params);
    }

}
