/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Cart;
import com.exam.Review;
import java.util.List;

/**
 *
 * @author User
 */
public interface ReviewDao {
     public void doSave(Review r);
     public void doUpdate(Review r);
     public void doDelete(Review r);
      public List<Review> allReviews();
      public List<Review> oneUserReviews(String userContact);
}
