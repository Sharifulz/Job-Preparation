/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.Cart;
import com.exam.NewHibernateUtil;
import com.exam.Orders;
import com.exam.dao.OrderDao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

/**
 *
 * @author User
 */
@Component
public class OrdersDaoImpl implements OrderDao {

    @Override
    public List<Orders> aOrderProduct(String userContact) {
        List<Orders> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Orders where username=:a");
        q.setString("a", userContact);
        list = q.list();
        return list;
    }

    @Override
    public List<Orders> allOrders() {
        List<Orders> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Orders");
        list = q.list();
        return list;
    }

    @Override
    public void removeOrder(Orders order) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(order);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void updateOrder(Orders order) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.update(order);
        ses.getTransaction().commit();
        ses.close();
    }

}
