/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Cart;
import com.exam.Orders;
import com.exam.Product;
import com.exam.Review;
import com.exam.dao.impl.ReviewDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author User
 */
@Path("/ReviewData")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ReviewService {
    
    @Autowired
    ReviewDaoImpl rd = new ReviewDaoImpl();
    
    @GET
    public List<Review> getAllReviews(){
        List<Review> list = new ArrayList<>();
        list = rd.allReviews();
        return list;
    }

      @GET
      @Path("/aUserReview/{userContact}")     
    public List<Review> getOneReviews(@PathParam("userContact") String userContact){
        List<Review> list = new ArrayList<>();
        list = rd.oneUserReviews(userContact);
        return list;
    }      
    @POST
    public void addStudent(Review s){
         rd.doSave(s);
    }
    
    @PUT
    @Path("/update/{reviewId}")
    public void updateStudent(@PathParam("reviewId") int id, Review rev) {
        rev.setId(id);
        rd.doUpdate(rev);
        
    }
    
    @DELETE
    @Path("/delete/{reviewId}")
    public void deleteStudent(@PathParam("reviewId") int id){
        Review review = new Review();
        review.setId(id);
        rd.doDelete(review);
}
}
