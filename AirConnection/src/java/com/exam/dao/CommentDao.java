/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Cart;
import com.exam.Comments;
import java.util.List;

/**
 *
 * @author shaarif
 */
public interface CommentDao {
    public List<Comments> allPostComments();
    public void doSave(Comments c);
    public void deleteComment(Comments c);
}
