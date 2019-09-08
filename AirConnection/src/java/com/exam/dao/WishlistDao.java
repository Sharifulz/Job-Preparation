/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Wishlist;
import java.util.List;

/**
 *
 * @author User
 */
public interface WishlistDao {
    public void doSave(Wishlist w);
    public List<Wishlist> getAllWishlist();
}
