/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.Admin;
import com.exam.Cart;
import com.exam.NewHibernateUtil;
import com.exam.dao.AdminDao;
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
public class AdminDaoImpl implements AdminDao{

    @Override
    public List<Admin> anAdmin(String email, String password) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Admin> list = new ArrayList<>();
        Query q = ses.createQuery("from Admin where email=:a and password=:b");
        q.setString("a",email);
        q.setString("b",password);
        list = q.list();
        return list;
    }
    
}
