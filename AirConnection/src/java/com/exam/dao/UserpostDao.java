/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Userpost;
import java.util.List;

/**
 *
 * @author User
 */
public interface UserpostDao {
    public void doSave(Userpost upost);
    public void removePost(Userpost upost);
    public List<Userpost> showAll();
}
