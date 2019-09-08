/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Admin;
import com.exam.Cart;
import java.util.List;

/**
 *
 * @author User
 */

public interface AdminDao {
     public List<Admin> anAdmin(String username, String contact);
}
