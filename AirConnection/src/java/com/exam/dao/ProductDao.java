/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Product;
import java.util.List;
import org.springframework.stereotype.Component;

/**
 *
 * @author shaarif
 */
@Component
public interface ProductDao {
    public void addNewProduct(Product p);
    public void updateNewProduct(Product p);
    public void deleteProduct(Product p);
    public List<Product> getAppProduct();
    public List<Product> getOneProduct(String productName);
}
