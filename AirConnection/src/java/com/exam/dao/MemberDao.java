/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Member;
import java.util.List;

/**
 *
 * @author User
 */
public interface MemberDao {
    public List<Member> doShowAll();
    public void doSave(Member m);
    public void doUpdate(Member m);
    public void doDelete(Member m);
    public boolean checkMemberExixtence(String contact);
    public List<Member> loginAMember(String email, String contact);
}
