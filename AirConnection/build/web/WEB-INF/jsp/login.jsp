<%-- 
    Document   : login
    Created on : May 22, 2019, 8:55:40 PM
    Author     : shaarif
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./AllLink.jsp" %>
<%@include file="./headerForAll.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl"> 

        <div class="row mt-5">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <center>
                    <div class="spinner-grow text-danger" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>
                    <a href="sendToAdmin.py">
                      <i class="fa fa-list text-danger" style="margin-top: 150px; font-size: 150px;"></i>  
                    </a>
                    <br>
                    <div class="alert alert-danger" role="alert">
                        <span class="text-danger">
                            <c:out value="${msg}"></c:out>
                        </span> 
                    </div>
                </center>
            </div>
            <div class="col-md-4">
                <div class="jumbotron bg-light" style="margin-top: -30px;">
                    <center>
                        <i class="fa fa-user-plus text-danger" style="font-size: 100px;"></i>    
                    </center>

                    <h1 class="display-4 text-center text-dark">MEMBER LOGIN</h1>
                    <p class="lead">
                    <form ng-submit="loginControl(formLogin)">
                        <input type="text" name="name" ng-model="formLogin.contact" class="form-control" placeholder="USER CONTACT" style="height: 45px;"><br/>
                        <input type="password" name="password" ng-model="formLogin.password" class="form-control" placeholder="PASSWORD" style="height: 45px;"><br/>
                        <input type="submit" value="LOGIN" class="btn btn-danger bg-danger btn-block">
                    </form>
                    </p>

                    <div class="row">
                        <div class="col-md-6 text-center">
                            <a href="#" class="text-danger">Forget Password?</a>
                        </div>
                        <div class="col-md-6 text-center">
                            <a href="sendToRegister.py" class="text-danger">Become A Member </a>
                        </div>
                    </div>
                </div>

                <hr class="my-1">

            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
</body>
</html>
