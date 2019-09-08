/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.Cart;
import com.exam.Comments;
import com.exam.NewHibernateUtil;
import com.exam.dao.CommentDao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author shaarif
 */
public class CommentsDaoImpl implements CommentDao {

    @Override
    public List<Comments> allPostComments() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Comments> list = new ArrayList<>();
        Query q = ses.createQuery("from Comments");
        list = q.list();
        return list;
    }

    @Override
    public void doSave(Comments c) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(c);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void deleteComment(Comments c) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(c);
        ses.getTransaction().commit();
        ses.close();
    }

}
