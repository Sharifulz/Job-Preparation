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
                    <h2>TOTAL MEMBER # {{member.length}}</h2>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchMember" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
            </div>
        </div>
        <!---------------------------------------------------------->
         <!---------------------------------------------------------->
        <table class="table table-striped table-dark">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">MEMBER IMAGE</th>
                    <th scope="col">MEMBER NAME</th>
                    <th scope="col">MEMBER CONTACT</th>
                    <th scope="col">MEMBER PASSWORD</th>
                    <th scope="col" colspan="2">MEMBER ADDRESS</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="mem in member | filter :searchMember">
                    <th scope="row">1</th>
                    <td>{{mem.id}}</td>
                    <td><img src="img/{{mem.image}}" style="width: 100px; height: 100px;"></td>
                    <td>{{mem.name}}</td>
                    <td>{{mem.email}}</td>
                    <td>{{mem.contact}}</td>
                    <td>{{mem.password}}</td>
                    <td>{{mem.address}}</td>
                    <td>
                        <a href="#" class="btn btn-danger m-3" ng-click="deleteUser(mem)">
                        <i class="fa fa-close"></i>
                    </a>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
