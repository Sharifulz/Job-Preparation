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
        <style>
            th{
                text-align: center;
            }
        </style>
    </head>
    <body ng-app="simpleAdmin" ng-controller="simpleAdminCtrl"> 
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3>TOTAL POSTS  #<span class="btn btn-danger text-light">{{userPostForAdmin.length}}</span></h3>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchPosts" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
                <div class="col-md-4 text-center">
                   
                </div>
            </div>
        </div>


        <table class="table table-striped table-dark">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">USERNAME</th>
                    <th scope="col">POSTS</th>
                    <th scope="col">IMAGE</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="posts in userPostForAdmin| filter: searchPosts">
                    <th scope="row"></th>
                    <td>{{posts.username}}</td>
                    <td>{{posts.posts}}</td>
                    <td>{{posts.image}}</td>
                    <td>
                        <a href="#" class="btn btn-danger" ng-click="deletePosts(posts)">
                            <i class="fa fa-close text-light text-danger"></i>
                        </a>
                    </td>
                    <td>
                        
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
