/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.controller;

import com.exam.Member;
import com.exam.Userpost;
import com.exam.dao.impl.MemberDaoImpl;
import com.exam.dao.impl.UserpostDaoImpl;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author User
 */
@Controller
public class MemberController {
// request will come from /web-inf/views/memberSignIn.jsp
    @RequestMapping("/fileUploadAir.py")
    public String upload(Model model, @RequestParam("imageFile") MultipartFile[] files) {
       String path = this.getClass().getClassLoader().getResource("").getPath();
        String[] imagePath = path.split("/");
        String newString = "";
        for (int i = 0; i < imagePath.length - 4; i++) {
            newString += imagePath[i] + "\\";
        }
        String uploadDir = newString.substring(1)+"web\\img";
//---------------------------------------------------
        StringBuilder fileNames = new StringBuilder();
        Path fileNameAndPath = null;
        try {
            for (MultipartFile file : files) {
                fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
                fileNames.append(file.getOriginalFilename());
                Files.write(fileNameAndPath, file.getBytes());
            }
        } catch (IOException e) {
            model.addAttribute("msg", "YOU HAVENT CHOOSE ANY IMAGES");
        }
        model.addAttribute("img", fileNames);
        return "memberSignIn";
    }

    @RequestMapping("/fileUploadProduct.py")
    public String uploadProduct(Model model, @RequestParam("imageFile") MultipartFile[] files) {
        String path = this.getClass().getClassLoader().getResource("").getPath();
        String[] imagePath = path.split("/");
        String newString = "";
        for (int i = 0; i < imagePath.length - 4; i++) {
            newString += imagePath[i] + "\\";
        }
        String uploadDir = newString.substring(1)+"web\\img";
//---------------------------------------------------
        StringBuilder fileNames = new StringBuilder();
        Path fileNameAndPath = null;
        try {
            for (MultipartFile file : files) {
                fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
                fileNames.append(file.getOriginalFilename());
                Files.write(fileNameAndPath, file.getBytes());
            }
        } catch (IOException e) {
            model.addAttribute("msg", "YOU HAVENT CHOOSE ANY IMAGES");
        }

        model.addAttribute("img", fileNames);
        return "newProductAdd";
    }
// request will come from /web-inf/views/memberSignIn.jsp
    @RequestMapping("/saveData.py")
    public String upload(@ModelAttribute("member") Member mem, Model m) {
        MemberDaoImpl md = new MemberDaoImpl();

        if (md.checkMemberExixtence(mem.getContact())) {
            m.addAttribute("msg", "YOU ARE ALREADY A MEMBER");
        } else {
            md.doSave(mem);
            m.addAttribute("msg", "CONFRATULATION : YOU ARE NOW A MEMBER OF OUR FAMILY");
        }
        return "login";
    }
    
       @RequestMapping("/savePostData.py")
    public String uploadPost(@ModelAttribute("userpost") Userpost post, Model m) {
        UserpostDaoImpl upost = new UserpostDaoImpl();
        upost.doSave(post);
        return "newsFeed";
    }      
    // request will come from /web-inf/views/postPage.jsp
    @RequestMapping("/fileUploadNewsfeed.py")
    public String uploadImageNewsFeed(Model model, @RequestParam("imageFile") MultipartFile[] files) {
        String path = this.getClass().getClassLoader().getResource("").getPath();
        String[] imagePath = path.split("/");
        String newString = "";
        for (int i = 0; i < imagePath.length - 4; i++) {
            newString += imagePath[i] + "\\";
        }
        String uploadDir = newString.substring(1)+"web\\img";   
//---------------------------------------------------
        StringBuilder fileNames = new StringBuilder();
        Path fileNameAndPath = null;
        try {
            for (MultipartFile file : files) {
                fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
                fileNames.append(file.getOriginalFilename());
                Files.write(fileNameAndPath, file.getBytes());
            }
        } catch (IOException e) {
            model.addAttribute("msg", "YOU HAVENT CHOOSE ANY IMAGES");
        }

        model.addAttribute("img", fileNames);
        return "postPage";
    }
            
}
