/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Cart;
import com.exam.Orders;
import com.exam.dao.impl.OrdersDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
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
@Path("/OrderData")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class OrderService {
    
    @Autowired
    OrdersDaoImpl od = new OrdersDaoImpl();
    
    @GET
    @Path("/{userContact}")
    public List<Orders> getACart(@PathParam("userContact") String userContact){
        List<Orders> list = new ArrayList<>();
        list = od.aOrderProduct(userContact);
        return list;
        
    }
    @GET
    @Path("/getAllData")
    public List<Orders> getAllOrders(){
        List<Orders> list = new ArrayList<>();
        list = od.allOrders();
        return list;   
    }
    @DELETE
    @Path("/delete/{studentId}")
    public void deleteOrders(@PathParam("studentId") int id){
        Orders order = new Orders();
        order.setId(id);
        od.removeOrder(order);
    }
    
    @PUT
    @Path("/update/{orderId}")
    public void updateOrderStatus(@PathParam("orderId") int id,Orders order){
        order.setId(id);
        od.updateOrder(order);
        
    }
}
