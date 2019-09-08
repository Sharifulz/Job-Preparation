<%-- 
    Document   : timeline
    Created on : May 20, 2019, 10:50:02 PM
    Author     : user
--%>
<%@include file="./AllLink.jsp" %>
<%@include file="./header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl"> 
        <h1>Member Page</h1>
        <!----------------------------------------------------------->
        <div class="container">
            <div class="col-md-4" ng-repeat="x in simples">
                <div class="card">
                    <div class="card-image inner">
                        <img src="img/{{x.image}}">
                        <span class="card-title">{{x.name}}</span>
                        <a ng-click="addToCart(x)" class="btn-floating halfway-fab waves-effect waves-light red" onclick="mc()">
                            <i class="fa fa-plus fa-5x"></i>

                        </a>
                    </div>
                    <div class="card-content">
                        <p>{{x.descr}}</p>
                        <center>
                            <button class="button button-5 button-5a icon-remove bg-danger btn-block">
                                <i class="fa fa-list"></i><span>Details</span></button>
                        </center>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
