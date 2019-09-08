/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Member;
import com.exam.Wishlist;
import com.exam.dao.impl.WishlistDaoImpl;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author User
 */
@Path("/contactMessageWishlist")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ContactMessageService {
    
    @Autowired
    WishlistDaoImpl wd = new WishlistDaoImpl();
    
    @GET
    public List<Wishlist> getAllProduct() {
        List<Wishlist> list = new ArrayList<>();
        list = wd.getAllWishlist();
        return list;   
    }
}
