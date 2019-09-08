/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao.impl;

import com.exam.Member;
import com.exam.NewHibernateUtil;
import com.exam.dao.MemberDao;
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
public class MemberDaoImpl implements MemberDao{

    @Override
    public void doSave(Member m) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(m);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void doUpdate(Member m) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.update(m);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public void doDelete(Member m) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(m);
        ses.getTransaction().commit();
        ses.close();
    }

    @Override
    public boolean checkMemberExixtence(String contact) {
        List<Member> list = new ArrayList<>();
         Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Member where contact=:b");
        q.setString("b", contact);
        list = q.list();
        
        if (list.size()>0) {
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<Member> loginAMember(String contact, String password) {
        List<Member> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Member where contact=:a and password=:b");
        q.setString("a", contact);
        q.setString("b", password);
        list = q.list();
        ses.close();
        return list;
    }

    @Override
    public List<Member> doShowAll() {
        List<Member> list = new ArrayList<>();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("from Member");
        list = q.list();
        return list;
    }
    
}
