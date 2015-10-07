package com.mhs.eforoosh.report.service;

import com.mhs.eforoosh.model.shopping.OrderedItem;
import com.mhs.eforoosh.model.shopping.UserOrder;
import com.mhs.eforoosh.report.model.JasperOrder;
import com.mhs.eforoosh.repository.UserOrderDAO;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
        Iterable<UserOrder> userOrders = userOrderDAO.findAll();
        List<JasperOrder> jasperOrders = new ArrayList<JasperOrder>();


        for (UserOrder userOrder : userOrders) {
            JasperOrder jasperOrder = new JasperOrder();
            Set<OrderedItem> orderedItems = userOrder.getOrderedItems();

            jasperOrder.setOrder_id(userOrder.getObjectId());
            jasperOrder.setName(userOrder.getName());
            jasperOrder.setOrder_date(userOrder.getOrderDate());
            jasperOrder.setStreet(userOrder.getStreet());
            jasperOrder.setZip(userOrder.getZip());
            jasperOrder.setCity(userOrder.getCity());
            jasperOrder.setMobile(userOrder.getMobileNo());
            jasperOrder.setPhone(userOrder.getPhone());
            jasperOrder.setEmail(userOrder.getEmail());


            for (OrderedItem orderedItem : orderedItems) {
                jasperOrder.setProduct_id(orderedItem.getProduct().getObjectId());
                jasperOrder.setQuantity(orderedItem.getQuantity());
                jasperOrder.setProduct_name(orderedItem.getProduct().getName());
                jasperOrder.setUnit_price(orderedItem.getProduct().getUnitPrice());
                jasperOrder.setType(orderedItem.getProduct().getType());
                jasperOrder.setCondition(orderedItem.getProduct().getCondition());
                jasperOrder.setDiscount(orderedItem.getProduct().getDiscount());
            }


            jasperOrders.add(jasperOrder);
        }
        return new JRBeanCollectionDataSource(jasperOrders);

    }

    public JRDataSource getDataSourceById(long productId) {
        UserOrder userOrder = userOrderDAO.findOne(productId);
        List<JasperOrder> jasperOrders = new ArrayList<JasperOrder>();
        Set<OrderedItem> orderedItems = userOrder.getOrderedItems();

        JasperOrder jasperOrder = new JasperOrder();

        jasperOrder.setOrder_id(userOrder.getObjectId());
        jasperOrder.setName(userOrder.getName());
        jasperOrder.setOrder_date(userOrder.getOrderDate());
        jasperOrder.setStreet(userOrder.getStreet());
        jasperOrder.setZip(userOrder.getZip());
        jasperOrder.setCity(userOrder.getCity());
        jasperOrder.setMobile(userOrder.getMobileNo());
        jasperOrder.setPhone(userOrder.getPhone());
        jasperOrder.setEmail(userOrder.getEmail());

        for (OrderedItem orderedItem : orderedItems) {
            jasperOrder.setProduct_id(orderedItem.getProduct().getObjectId());
            jasperOrder.setQuantity(orderedItem.getQuantity());
            jasperOrder.setProduct_name(orderedItem.getProduct().getName());
            jasperOrder.setUnit_price(orderedItem.getProduct().getUnitPrice());
            jasperOrder.setType(orderedItem.getProduct().getType());
            jasperOrder.setCondition(orderedItem.getProduct().getCondition());
            jasperOrder.setDiscount(orderedItem.getProduct().getDiscount());
        }

        jasperOrders.add(jasperOrder);

        return new JRBeanCollectionDataSource(jasperOrders);
    }

}
