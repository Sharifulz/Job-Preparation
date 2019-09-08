/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.NewHibernateUtil;
import com.exam.Review;
import com.exam.Userpost;
import com.exam.dao.UserpostDao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author User
 */
public class UserpostDaoImpl implements UserpostDao {

    @Override
    public void doSave(Userpost upost) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(upost);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public List<Userpost> showAll() {
          List<Userpost> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Userpost");
        list = q.list();
        return list;
    }

    @Override
    public void removePost(Userpost upost) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(upost);
        ses.getTransaction().commit();
        ses.close();
    }

}
