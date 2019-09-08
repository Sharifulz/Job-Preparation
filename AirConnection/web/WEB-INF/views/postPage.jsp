<%-- 
    Document   : login
    Created on : May 22, 2019, 8:55:40 PM
    Author     : shaarif
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="AllLink.jsp" %>
<%@include file="./memberHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body ng-app="simpleMember" ng-controller="simpleMemberCtrl">  
       <hr/>
        <div class="container" ng-show="isVisiblePost">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <form action="fileUploadNewsfeed.py" method="POST" enctype="multipart/form-data"><!-- controller name [com.exam.controller.MemberController] line 100 -->
                        <input type="file" name="imageFile" style="height: 100px; width: 320px; cursor: grab; background-color: black; color: white;">
                        <input type="submit" value="CONFIRM" class="btn btn-dark px-lg-5 py-lg-4">
                    </form>
                    <form action="savePostData.py">
                        <div class="form-group">
                            <input type="hidden" name="username" value="{{userContact}}" class="form-control" id="exampleInputPassword1" placeholder="Contacts">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="image" value="${img}" class="form-control" id="exampleInputPassword1" placeholder="Image">
                        </div>
                        <div class="form-group">
                            <textarea type="text" name="posts" class="form-control" id="exampleInputPassword1" placeholder="Message"></textarea>
                        </div>

                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-2">
                                <input type="submit" class="btn btn-dark px-5" value="POST">
                            </div>
                            <div class="col-md-4"></div>
                        </div>


                    </form>
                </div>
                <div class="col-md-2">
                    <a href="" ng-click="closeCreatePost()">
                        <i class="fa fa-close fa-2x text-dark"></i>
                    </a>
                </div>
            </div>
        </div>
        <hr/>

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
