/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Member;
import com.exam.Userpost;
import com.exam.dao.impl.UserpostDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author shaarif
 */
@Path("/postData")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class NewsFeedPostService {
    UserpostDaoImpl upost = new UserpostDaoImpl();
    
    @GET
    public List<Userpost> getAllUserpost() {
        List<Userpost> list = new ArrayList<>();
        list = upost.showAll();
        return list;   
    }
     
    @DELETE
    @Path("/delete/{postId}")
    public void deleteOrders(@PathParam("postId") int id){
        Userpost userpost= new Userpost();
        userpost.setPostid(id);
        upost.removePost(userpost);
    }      
}
