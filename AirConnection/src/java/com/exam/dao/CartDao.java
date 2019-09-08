/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Cart;
import com.exam.Orders;
import java.util.List;

/**
 *
 * @author User
 */
public interface CartDao {
    public void doSave(Cart c);
    public void doSaveOrder(Orders c);
    public void doDeleteCart(Cart cr);
    public List<Cart> aCartProduct(String contact);
    public List<Cart> allCartProduct();
}
