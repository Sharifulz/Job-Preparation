<%-- 
    Document   : login
    Created on : May 22, 2019, 8:55:40 PM
    Author     : shaarif
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./AllLink.jsp" %>
<%@include file="./headerForAll.jsp" %>
<script src="js/welcomeJS.js" type="text/javascript"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl"> 
        <!-----------------------------------------------------------------> 

        <!----------------------------------------------------------------->


        <div class="row mt-5">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <center>
                    <div class="spinner-grow text-danger" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>
                    <a href="sendToAdmin.php">
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

                    <h1 class="display-4 text-center text-dark">ENROLL NOW</h1>
                    <p class="lead">
                    <form ng-submit="loginControl(formLogin)">
                        <input type="text" name="name" ng-model="formLogin.email" class="form-control" placeholder="USER EMAIL" style="height: 45px;"><br/>
                        <input type="password" name="password" ng-model="formLogin.contact" class="form-control" placeholder="CONTACTS" style="height: 45px;"><br/>
                        <input type="submit" value="LOGIN" class="btn btn-danger bg-danger btn-block">
                    </form>
                    </p>

                    <div class="row">
                        <div class="col-md-6 text-center">
                            <a href="#" class="text-danger">Forget Password?</a>
                        </div>
                        <div class="col-md-6 text-center">
                            <a href="memberSignIn.jsp" class="text-danger">Become A Member </a>
                        </div>
                    </div>
                </div>

                <hr class="my-1">

            </div>
        </div>
        <div class="col-md-3"></div>
    </div>

    <script>
        var app = angular.module("simpleApp", []);
        app.controller("simpleCtrl", function ($scope, $http) {
            $scope.formLogin = {
                email: "",
                contact: ""
            };

            $scope.simples = [];
            $scope.loginControl = function () {
                console.log($scope.formLogin.email);
                console.log($scope.formLogin.contact);

                $http({
                    method: 'GET',
                    url: 'http://localhost:8080/AirConnectionE/service/login/getUser/' + $scope.formLogin.email + "," + $scope.formLogin.contact
                }).then(function successCallback(response) {
                    $scope.simples = response.data;
                    console.log(response.data);
                    console.log("User found  " + $scope.simples.length);
                    if ($scope.simples.length == 1) {
                        localStorage.setItem("userName", $scope.simples[0].name);
                        localStorage.setItem("userEmail", $scope.simples[0].email);
                        localStorage.setItem("userContact", $scope.simples[0].contact);
                        localStorage.setItem("userImage", $scope.simples[0].image);
                        console.log(localStorage.getItem("userName"));
                        console.log(localStorage.getItem("userEmail"));
                        console.log(localStorage.getItem("userContact"));
                        console.log(localStorage.getItem("userImage"));
                        window.location = "memberPage.jsp";
                    } else {
                        console.log("NO USER FOUND");
                        swal("Log In Failed!", "Check your information again!", "error");
                    }

                }, function errorCallback(response) {
                    console.log(response.statusText);
                });
            }

// success and error method
            function success(response) {
                console.log("From Success");
            }

            function error(response) {
                console.log(response.statusText);
            }

        });
//------------------------------------

    </script>
</body>
</html>
