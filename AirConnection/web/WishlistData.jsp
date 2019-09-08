<%-- 
    Document   : timeline
    Created on : May 20, 2019, 10:50:02 PM
    Author     : user
--%>
<%@include file="./AllLink.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body ng-app="simpleAdmin" ng-controller="simpleAdminCtrl"> 

        <!----------------------------------------------------------->
        <div class="container">
            <div class="row">
                <div class="col-md-4 text-center">

                </div>
                <div class="col-md-4">
                    <h2>All USer Messages # {{wishlist.length}}</h2>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchMessage" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
            </div>
        </div>
        <!----------------------------------------------------------->

        <table class="table table-striped table-dark">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">USER NAME</th>
                    <th scope="col">MESSAGE</th>
                    <th scope="col">CONTACT</th>
                
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="message in wishlist| filter: searchMessage">
                    <th scope="row">1</th>
                    <td>{{message.id}}</td>
                    <td>{{message.username}}</td>
                    <td>{{message.productname}}</td>
                    <td>{{message.contact}}</td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
