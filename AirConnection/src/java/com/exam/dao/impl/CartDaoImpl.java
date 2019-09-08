/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.Cart;
import com.exam.NewHibernateUtil;
import com.exam.Orders;
import com.exam.dao.CartDao;
import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

/**
 *
 * @author User
 */
@Component
public class CartDaoImpl implements CartDao{

    @Override
    public void doSave(Cart c) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(c);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public List<Cart> aCartProduct(String contact) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Cart> list = new ArrayList<>();
        Query q = ses.createQuery("from Cart where username=:a");
        q.setString("a",contact);
        list = q.list();
        return list;
    }

    @Override
    public void doSaveOrder(Orders ord) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(ord);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void doDeleteCart(Cart cr) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(cr);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public List<Cart> allCartProduct() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Cart> list = new ArrayList<>();
        Query q = ses.createQuery("from Cart");
        list = q.list();
        return list;
    }
    
}
