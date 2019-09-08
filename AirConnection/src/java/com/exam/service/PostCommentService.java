/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Comments;
import com.exam.Orders;
import com.exam.Product;
import com.exam.Review;
import com.exam.dao.impl.CommentsDaoImpl;
import com.exam.dao.impl.OrdersDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author shaarif
 */
@Path("/postCommentService")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class PostCommentService {
    @Autowired
    CommentsDaoImpl cdd = new CommentsDaoImpl();
    
    @GET
    public List<Comments> getACart(){
        List<Comments> list = new ArrayList<>();
        list = cdd.allPostComments();
        return list;
        
    }
    
    @POST
    public void addComments(Comments s){
         cdd.doSave(s);
    }
    @DELETE
    @Path("/delete/{productId}")
    public void deleteStudent(@PathParam("productId") int id) {
        Comments comm = new Comments();
        comm.setId(id);
        cdd.deleteComment(comm);
    }
}
