/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.Member;
import com.exam.NewHibernateUtil;
import com.exam.Review;
import com.exam.dao.ReviewDao;
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
public class ReviewDaoImpl implements ReviewDao{

    @Override
    public void doSave(Review r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(r);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public List<Review> allReviews() {
          List<Review> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Review");
        list = q.list();
        return list;
    }

    @Override
    public List<Review> oneUserReviews(String userContact) {
        List<Review> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Review where contact=:a");
        q.setString("a", userContact);
        list = q.list();
        return list;
    }

    @Override
    public void doUpdate(Review r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.update(r);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void doDelete(Review r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(r);
        ses.getTransaction().commit();
        ses.close();
    }
    
}
