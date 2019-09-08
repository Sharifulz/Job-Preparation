/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.controller;

import com.exam.Admin;
import com.exam.Member;
import com.exam.Product;
import com.exam.dao.impl.AdminDaoImpl;
import com.exam.dao.impl.MemberDaoImpl;
import com.exam.dao.impl.ProductDaoImpl;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author User
 */
@Controller
public class AdminController {
    @Autowired
    AdminDaoImpl ad;

    @RequestMapping("/adminLogin")
    public String loginAdmin(@ModelAttribute("admin") Admin adm, Model m) {
        List<Admin> adminOne = new ArrayList<>();
        adminOne = ad.anAdmin(adm.getEmail(), adm.getPassword());
        if (adminOne.size()>0) {
            m.addAttribute("adminOne",adminOne);
            return "adminPage";
        }else{
            return "adminLogin";
        }
        
    }
    
    
    @RequestMapping("/saveDataProduct")
    public String insertProduct(@ModelAttribute("product") Product pro, Model m) {
        ProductDaoImpl pd = new ProductDaoImpl();
        pd.addNewProduct(pro);
        m.addAttribute("msg","Your Product Is Uploaded Successfully");
        return "newProductAdd";
    }       
            
}
