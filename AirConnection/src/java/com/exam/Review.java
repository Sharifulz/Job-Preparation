package com.exam;
// Generated Jun 17, 2019 9:08:36 AM by Hibernate Tools 4.3.1



/**
 * Review generated by hbm2java
 */
public class Review  implements java.io.Serializable {


     private Integer id;
     private String contact;
     private String image;
     private String msg;
     private String reply;

    public Review() {
    }

    public Review(String contact, String image, String msg, String reply) {
       this.contact = contact;
       this.image = image;
       this.msg = msg;
       this.reply = reply;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getContact() {
        return this.contact;
    }
    
    public void setContact(String contact) {
        this.contact = contact;
    }
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    public String getMsg() {
        return this.msg;
    }
    
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public String getReply() {
        return this.reply;
    }
    
    public void setReply(String reply) {
        this.reply = reply;
    }




}


