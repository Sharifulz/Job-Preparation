/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Cart;
import com.exam.Orders;
import com.exam.dao.impl.CartDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.POST;
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
@Path("/CartProduct")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class CartProductService {
    
    @Autowired
    CartDaoImpl cd = new CartDaoImpl();
    
    @GET
    @Path("/{userContact}")
    public List<Cart> getACart(@PathParam("userContact") String contact){
        List<Cart> list = new ArrayList<>();
        list = cd.aCartProduct(contact);
        return list;
    }
    
    @GET
    @Path("/allCart")
    public List<Cart> getAllCart(){
        List<Cart> list = new ArrayList<>();
        list = cd.allCartProduct();
        return list;
    }       
     @POST
    public void addStudent(Cart s){
         cd.doSave(s);
    }

    @POST
    @Path("/order")
    public void addOrder(Orders ord){
         cd.doSaveOrder(ord);
    }
    
    @DELETE
    @Path("/delete/{deleteId}")
    public void deleteCart(@PathParam("deleteId") int id){
        Cart cr = new Cart();
        cr.setId(id);
         cd.doDeleteCart(cr);
    }
}
