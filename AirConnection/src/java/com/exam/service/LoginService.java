/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Member;
import com.exam.dao.impl.MemberDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
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
@Path("/login")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class LoginService {
    @Autowired
    MemberDaoImpl simpleService = new MemberDaoImpl();
     

    @GET
    @Path("/getUser/{contact}")
    public List<Member> getOneStudent(@PathParam("contact") String contact) { 
      String userInfo[] = contact.split(",");
        List<Member> list = new ArrayList<>();
        return list= simpleService.loginAMember(userInfo[0].toString(), userInfo[1].toString());   
    }

}