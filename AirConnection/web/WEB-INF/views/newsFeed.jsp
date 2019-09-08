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
        <!-----------------------------------------------------------------> 
        <hr/>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3>TOTAL POST  <span class="btn btn-danger text-light">{{userPost.length}}</span></h3>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchPost" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
                <div class="col-md-4 text-center">

                </div>
            </div>
        </div>
        <hr/>
        <div class="container" ng-repeat="post in userPost | filter: searchPost">
            <div class="row">
                <div class="col-md-2">
                    <span ng-show="post.username === userContact">
                        <a href="" ng-click="deletePost(post)">
                            <i class="fa fa-close fa-2x text-danger m-3"></i>
                        </a>
                    </span>
                </div>
                <div class="col-md-8">
                    <div class="jumbotron" style="background-color: white;">
                        <h1 class="display-4 text-danger">
                            <i class="fa fa-user text-light btn btn-primary"></i>
                            {{modifiedusername}}</h1>
                        <p class="lead">{{post.posts}}</p>
                        <div class="row">
                            <div class="col-md-12">
                                <center>
                                    <img src="img/{{post.image}}" alt="..." style="height: 350px; width: 700px; border-radius: 5px;">
                                </center>
                            </div>
                        </div>
                        <hr class="my-4">
                        <table class="table table-striped table-light">

                            <tr>
                                <td><i class="fa fa-arrow-down fa-2x text-primary ml-3"></i></td>
                                <td>
                                    <a href="#" ng-click="showComentForm(post)" class="btn btn-primary">
                                        <i class="fa fa-comment fa-1x text-light m-1"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr ng-show="isCommentFormVisible && post.postid == commentShowOnPost">
                                <td></td>
                                <td colspan="2">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-10">
                                                <input type="hidden" value="{{post.postid}}" ng-model="postComments.postid" class="form-control">
                                                <input type="hidden" value="{{userContact}}" ng-model="postComments.username" class="form-control">
                                                <input type="text" ng-model="postComments.comments" class="form-control">
                                            </div>
                                            <div class="col-md-1">
                                                <a href="" ng-click="sendCommentFromUser(postComments)" class="btn btn-primary" ng-click="sendComment()">
                                                    <i class="fa fa-arrow-right fa-1x text-light"></i>
                                                </a>
                                            </div>
                                            <div class="col-md-1">
                                                <a href="" ng-click="closeCommentForm()">
                                                    <i class="fa fa-close fa-2x m-1 text-danger"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                            </tr>
                            <tr ng-repeat="com in postComment | filter: searchPost">
                                <td colspan="2">
                                    <span ng-show="post.postid == com.postid">
                                        <span class="text-danger">@ {{com.username.slice(6)}}</span>
                                        <span class="text-primary">{{com.comments}}
                                            <span ng-show="com.username == userContact">
                                                <a href="" ng-click="deleteComment(com)">
                                                    <i class="fa fa-close fa-2x text-danger ml-5"></i>
                                                </a>
                                            </span>
                                        </span>
                                    </span>
                                </td>
                            </tr>

                        </table>
                    </div>
                </div>
                <div class="col-md-2">

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
