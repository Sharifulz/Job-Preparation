/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.controller;

import com.exam.Wishlist;
import com.exam.dao.impl.WishlistDaoImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author shaarif
 */
@Controller
public class NavigationController {

    @RequestMapping("/addNewProduct")
    public String sendingNeProduct() {
        return "newProductAdd";
    }

    @RequestMapping("/sendToAdmin")
    public String loginPage() {
        return "adminLogin";
    }
 // request comes from /web-inf/views/headerForAll.jsp
    @RequestMapping("/sendToRegister")
    public String sendingRegister() {
        return "memberSignIn";  //web-inf/views/memberSignIn.jsp
    }

    @RequestMapping("/mainPage")
    public String sendingMainPage() {

        return "home";
    }

    // request comes from /web-inf/views/headerForAll.jsp
    @RequestMapping("/redirectSignin")
    public String sendingSignIn() {
        return "login"; //web-inf/views/login.jsp
    }

    @RequestMapping("/homePage")
    public String sendingHome() {
        return "home";
    }

    @RequestMapping("/logoutUser")
    public String sendingLogout() {
        return "home";
    }

    @RequestMapping("/logoutAdmin")
    public String logoutAdmin() {
        return "home";
    }

    @RequestMapping("/newsFeed.py")
    public String sendingToewsFeed() {
        return "newsFeed";
    }
    // request comes from /memberPage.jsp
    @RequestMapping("/postPage.py")
    public String sendingToewsPostPage() {
        return "postPage"; //web-inf/views/login.jsp
    }
    

    @RequestMapping("/productPage.py")
    public String sendingToMemberHome() {
        return "memberPage";
    }
    WishlistDaoImpl wd = new WishlistDaoImpl();

    @RequestMapping("/contactToWishlist.py")
    public String normalUserContact(@ModelAttribute("wishList") Wishlist wishMessage, Model m) {
        wd.doSave(wishMessage);
        m.addAttribute("msg", "Your Messege Being Sent Successfully!");
        return "home";
    }

}
