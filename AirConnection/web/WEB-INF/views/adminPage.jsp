<%-- 
    Document   : timeline
    Created on : May 20, 2019, 10:50:02 PM
    Author     : user
--%>
<%@include file="AllLink.jsp" %>
<%@include file="adminHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #AdminTable{
                height: 650px;
                margin: 25px;
            }
            tr{
            }
            #AdminTable td{
                width: 90px;
                height: 30px;
            }
        </style>
    </head>
    <body ng-app="simpleAdmin" ng-controller="simpleAdminCtrl"> 
    <center>
       
        <table id="AdminTable">
            <tr>
                <td>
                    <!-- /orderData.jsp -->
                    <a href="orderData.jsp" target="iframeOne" class="button button-5 button-5a icon-remove bg-danger btn-block">
                        <i class="fa fa-check-circle text-light text-center"></i><span>ORDERS</span></a>
                </td>
                <td rowspan="7" style="width: 1100px;">
                    <iframe height="800px;" width="100%" src="orderData.jsp" name="iframeOne" scrolling="auto" style="border: none;"></iframe>
                </td>
            </tr>
            <tr>
                <td>
                   <a href="productData.jsp" target="iframeOne" class="button button-5 button-5a icon-remove bg-danger btn-block">
                        <i class="fa fa-list text-light text-center"></i><span>PRODUCTS</span></a>
                </td>
            </tr>
            <tr>
                <td>
                   <a href="cartData.jsp" target="iframeOne" class="button button-5 button-5a icon-remove bg-danger btn-block">
                        <i class="fa fa-shopping-cart text-light text-center"></i><span>CART DATA</span></a>
                </td>
            </tr>
            <tr>
                <td>
                   <a href="reviewData.jsp" target="iframeOne" class="button button-5 button-5a icon-remove bg-danger btn-block">
                        <i class="fa fa-list text-light text-center"></i><span>REVIEWS</span></a>
                </td>
            </tr>
            <tr>
                <td>
                   <a href="memberData.jsp" target="iframeOne" class="button button-5 button-5a icon-remove bg-danger btn-block">
                        <i class="fa fa-user-plus text-light text-center"></i><span>MEMBERS</span></a>
                </td>
            </tr>
            <tr>
                 <td>
                   <a href="WishlistData.jsp" target="iframeOne" class="button button-5 button-5a icon-remove bg-danger btn-block">
                        <i class="fa fa-user-plus text-light text-center"></i><span>MESSAGE</span></a>
                </td>
            </tr>
            <tr>
                 <td>
                   <a href="postData.jsp" target="iframeOne" class="button button-5 button-5a icon-remove bg-danger btn-block">
                        <i class="fa fa-user-plus text-light text-center"></i><span>TIMELINE</span></a>
                </td>
            </tr>
            <tr>
                 
            </tr>
        </table>
    </center>
    
     <hr/>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-8">
                    <p class="text-dark">&copy; 2019 AirConnection.xyz | | All Rights Reserved<p>
                </div>
                <div class="col-md-4">
                    <span class="text-center text-dark">
                        <i class="fa fa-envelope fa-2x mr-2 text-dark"></i>
                        shaarifulz@gmail.com</span>
                    <a href="">
                        <i class="fa fa-caret-square-up fa-2x mr-2 text-dark"></i>
                    </a>
                </div>
            </div>
        </div>
</body>
</html>
