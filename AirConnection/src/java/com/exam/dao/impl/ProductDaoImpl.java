/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.NewHibernateUtil;
import com.exam.Product;
import com.exam.dao.ProductDao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

/**
 *
 * @author shaarif
 */
@Component
public class ProductDaoImpl implements ProductDao {

    @Override
    public List<Product> getAppProduct() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Product");
        List<Product> list = new ArrayList<>();
        list = q.list();
        return list;
    }

    @Override
    public void addNewProduct(Product p) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(p);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void updateNewProduct(Product p) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.update(p);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void deleteProduct(Product p) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(p);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public List<Product> getOneProduct(String productName) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Product where name=:a");
        q.setString("a", productName);
        List<Product> list = new ArrayList<>();
        list = q.list();
        return list;
    }

}
