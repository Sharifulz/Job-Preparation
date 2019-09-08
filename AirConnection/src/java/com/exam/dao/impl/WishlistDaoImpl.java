/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.NewHibernateUtil;
import com.exam.Review;
import com.exam.Wishlist;
import com.exam.dao.WishlistDao;
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
public class WishlistDaoImpl implements WishlistDao{

    @Override
    public void doSave(Wishlist w) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(w);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public List<Wishlist> getAllWishlist() {
        List<Wishlist> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Wishlist");
        list = q.list();
        return list;
    }
    
}
