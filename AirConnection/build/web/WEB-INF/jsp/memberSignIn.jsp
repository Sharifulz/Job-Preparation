<%@include file="AllLink.jsp" %>
<%@include file="./headerForAll.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  
    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl">
        <hr/>

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-6">
                <div class="alert alert-danger text-dark" role="alert"> 
                    <center>
                        <c:out value="${msg}"></c:out>
                        </center>  
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="img/Test.gif" style="height: 200px; width: 200px; border-radius: 50%;">
                    </center>

                </div>
                <div class="col-md-6 jumbotron"> 
                    <center>
                        <h1>CREATE YOUR NEW PROFILE</h1>
                    </center>
                    <div class="row">
                        <div class="col-md-4">

                        </div>
                        <div class="col-md-4">
                            <form action="fileUploadAir.py" method="POST" enctype="multipart/form-data">
                                <input type="file" name="imageFile" style="height: 100px; width: 320px; cursor: grab; background-color: red; color: white;"><br/><br/>
                                <input type="submit" value="CONFIRM" class="btn btn-block btn-danger">
                            </form>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                    <br/>
                    <form action="saveData.py" method="POST" name="myForm">
                        <fieldset class="scheduler-border" style="border: 1px solid black; padding: 20px 20px;">
                            <legend class="scheduler-border" style="color: red; text-transform: uppercase;">User Information</legend>  
                            
                        <input type="text" name="name" ng-model="userName" ng-pattern="/^[A-Za-z. ]{1,25}$/" class="form-control" placeholder="Username" required=""><br/>
                        <span class="text-info" ng-show="!myForm.name.$valid">Name Must Be Alphabetical</span>
                             
                        <input type="email" name="email" ng-model="userEmail" ng-pattern="/^[a-z]+@[a-z]+.[a-z]{2,3}$/" class="form-control" placeholder="Email Address"><br/>
                             <span class="text-info" ng-show="!myForm.email.$valid">Email Must Be Valid</span>
                             
                        <input type="number" name="contact" ng-model="userContact" ng-pattern="/^01+[7-9]+[0-9]{8,8}$/" required placeholder="Contact Example : 01969037346" class="form-control" required=""><br/>
                         <span class="text-info" ng-show="!myForm.contact.$valid">Contact Must Be Valid</span>
                         
                        <input type="text" name="password" ng-model="userPassword" ng-pattern="/^[0-9A-Za-z]{8,45}$/" class="form-control" placeholder="Password" required=""><br/>
                        <span class="text-info" ng-show="!myForm.password.$valid">Password Minimum 8 Character</span>
                        
                        <textarea type="text" name="address" ng-model="userAddress" class="form-control" placeholder="Address" required=""></textarea><br/>

                        
                        <input type="text" name="image" value="${img}" class="form-control" placeholder="Images Here" readonly><br/>
                        
                        <span ng-show="myForm.name.$valid && myForm.email.$valid && myForm.contact.$valid && myForm.password.$valid ">
                            <input type="submit" value="BECOME A MEMBER" class="btn btn-danger" style="margin-left: 450px;">
                        </span>
                    
                    </fieldset>
                </form>
            </div> 
            <div class="col-md-2"></div>
        </div>

    </body>
</html>