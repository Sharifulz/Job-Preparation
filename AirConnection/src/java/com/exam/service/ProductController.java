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
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author shaarif
 */
@Path("/product")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ProductController {

    @Autowired
    ProductDaoImpl pd = new ProductDaoImpl();

    @GET
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        list = pd.getAppProduct();
        return list;        
    }
    
    @GET
    @Path("/getOneProduct/{productName}")
    public List<Product> getOneProduct(@PathParam("productName") String productName) {
        List<Product> list = new ArrayList<>();
        list = pd.getOneProduct(productName);  
        return list;
    }       
    @PUT
    @Path("/update/{productId}")
    public void updateStudent(@PathParam("productId") int id, Product pro) {
        pro.setId(id);
        pd.updateNewProduct(pro);
        
    }
    @DELETE
    @Path("/delete/{productId}")
    public void deleteStudent(@PathParam("productId") int id) {
        Product product = new Product();
        product.setId(id);
        pd.deleteProduct(product);
    }
}
