package com.mhs.eforoosh.report.service;

import com.mhs.eforoosh.model.shopping.OrderedItem;
import com.mhs.eforoosh.model.shopping.UserOrder;
import com.mhs.eforoosh.report.model.JasperOrder;
import com.mhs.eforoosh.report.model.JasperOrderedItems;
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
        List<JasperOrderedItems> jasperOrderedItemsList = new ArrayList<JasperOrderedItems>();


        for (UserOrder userOrder : userOrders) {
            JasperOrder jasperOrder = new JasperOrder();
            JasperOrderedItems jasperOrderedItems = new JasperOrderedItems();
            Set<OrderedItem> orderedItems = userOrder.getOrderedItems();

            jasperOrder.setUser_order_id(userOrder.getObjectId());
            jasperOrder.setName(userOrder.getName());
            jasperOrder.setOrder_date(userOrder.getOrderDate());
            jasperOrder.setStreet(userOrder.getStreet());
            jasperOrder.setZip(userOrder.getZip());
            jasperOrder.setCity(userOrder.getCity());
            jasperOrder.setMobile(userOrder.getMobileNo());
            jasperOrder.setPhone(userOrder.getPhone());
            jasperOrder.setEmail(userOrder.getEmail());


            for (OrderedItem orderedItem : orderedItems) {
                jasperOrderedItems.setProduct_id(orderedItem.getProduct().getObjectId());
                jasperOrderedItems.setQuantity(orderedItem.getQuantity());
                jasperOrderedItems.setProduct_name(orderedItem.getProduct().getName());
                jasperOrderedItems.setUnit_price(orderedItem.getProduct().getUnitPrice());
                jasperOrderedItems.setType(orderedItem.getProduct().getType());
                jasperOrderedItems.setCondition(orderedItem.getProduct().getCondition());
                jasperOrderedItems.setDiscount(orderedItem.getProduct().getDiscount());
                jasperOrderedItemsList.add(jasperOrderedItems);
            }

            jasperOrder.setJasperOrderedItems(jasperOrderedItemsList);
            jasperOrders.add(jasperOrder);
        }
        return new JRBeanCollectionDataSource(jasperOrders);

    }

    public JRDataSource getDataSourceById(long productId) {
        UserOrder userOrder = userOrderDAO.findOne(productId);
        List<JasperOrder> jasperOrders = new ArrayList<JasperOrder>();
        Set<OrderedItem> orderedItems = userOrder.getOrderedItems();

        JasperOrder jasperOrder = new JasperOrder();

        jasperOrder.setUser_order_id(userOrder.getObjectId());
        jasperOrder.setName(userOrder.getName());
        jasperOrder.setOrder_date(userOrder.getOrderDate());
        jasperOrder.setStreet(userOrder.getStreet());
        jasperOrder.setZip(userOrder.getZip());
        jasperOrder.setCity(userOrder.getCity());
        jasperOrder.setMobile(userOrder.getMobileNo());
        jasperOrder.setPhone(userOrder.getPhone());
        jasperOrder.setEmail(userOrder.getEmail());


        jasperOrders.add(jasperOrder);

        return new JRBeanCollectionDataSource(jasperOrders);
    }

}
