/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Member;
import com.exam.Product;
import com.exam.dao.impl.MemberDaoImpl;
import com.exam.dao.impl.ProductDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author User
 */
@Path("/member")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class MemberService {
    
    @Autowired
    MemberDaoImpl md = new MemberDaoImpl();
    
    @GET
    public List<Member> getAllProduct() {
        List<Member> list = new ArrayList<>();
        list = md.doShowAll();
        return list;   
    }
    
    @DELETE
    @Path("/delete/{memberId}")
    public void deleteStudent(@PathParam("memberId") int id) {
        Member member = new Member();
        member.setId(id);
        md.doDelete(member);
    }
      
}
