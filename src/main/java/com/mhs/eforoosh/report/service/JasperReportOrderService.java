package com.mhs.eforoosh.report.service;

import com.mhs.eforoosh.model.shopping.OrderedItem;
import com.mhs.eforoosh.model.shopping.UserOrder;
import com.mhs.eforoosh.report.model.JasperOrderItem;
import com.mhs.eforoosh.report.model.JasperUserOrder;
import com.mhs.eforoosh.repository.UserOrderDAO;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * Created by milad on 9/21/2015.
 */
@Service("jasperReportOrderService")
@Transactional
public class JasperReportOrderService {
    private static final long serialVersionUID = 1L;

    @Autowired
    private UserOrderDAO userOrderDAO;

    public JRDataSource getDataSource() {

        List<UserOrder> userOrders = userOrderDAO.findAll();
        List<JasperUserOrder> jasperUserOrders = new ArrayList<JasperUserOrder>();
        List<JasperOrderItem> jasperOrderItems = new ArrayList<JasperOrderItem>();

        for(UserOrder userOrder : userOrders) {
            JasperUserOrder jasperUserOrder = new JasperUserOrder();

            jasperUserOrder.setUser_order_id(userOrder.getObjectId());
            jasperUserOrder.setName(userOrder.getName());
            jasperUserOrder.setStreet(userOrder.getStreet());
            jasperUserOrder.setZip(userOrder.getZip());
            jasperUserOrder.setCity(userOrder.getCity());
            jasperUserOrder.setMobile(userOrder.getMobileNo());
            jasperUserOrder.setPhone(userOrder.getPhone());
            jasperUserOrder.setEmail(userOrder.getEmail());
            jasperUserOrder.setOrder_date(userOrder.getOrderDate());
            jasperUserOrder.setViewed(userOrder.isViewed());
            jasperUserOrder.setDelivered(userOrder.isDelivered());
            jasperUserOrder.setDone(userOrder.isDone());
            jasperUserOrder.setCanceled(userOrder.isCanceled());

            for(OrderedItem orderedItem:userOrder.getOrderedItems())
            {
                JasperOrderItem jasperOrderItem = new JasperOrderItem();

                jasperOrderItem.setOrder_item_id(orderedItem.getObjectId());
                jasperOrderItem.setQuantity(orderedItem.getQuantity());

                jasperOrderItem.setProduct_id(orderedItem.getProduct().getObjectId());
                jasperOrderItem.setProduct_name(orderedItem.getProduct().getName());
                jasperOrderItem.setType(orderedItem.getProduct().getType());
                jasperOrderItem.setUnit_price(orderedItem.getProduct().getUnitPrice());
                jasperOrderItem.setDiscount(orderedItem.getProduct().getDiscount());
                jasperOrderItem.setCondition(orderedItem.getProduct().getCondition());

                jasperOrderItems.add(jasperOrderItem);
            }

            jasperUserOrder.setJasperOrderItems(jasperOrderItems);
            jasperUserOrders.add(jasperUserOrder);
        }
        return new JRBeanCollectionDataSource(jasperUserOrders);
    }


}
