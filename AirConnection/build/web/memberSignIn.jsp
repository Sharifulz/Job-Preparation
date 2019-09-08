<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="resources/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/angular.min.js" type="text/javascript"></script>
        <title>AngularJS Example</title>  

    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl">
        {{9 * 10}}
        <a href="#" class="btn btn-danger">CREATE PROFILE PAGE/ ADD NEW MEMBER</a>
        <hr/>
    
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="alert alert-danger text-dark" role="alert"> 
                    <center>
                        <c:out value="${msg}"></c:out>
                    </center>  
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6"> 
                <center>
                    <h1>CREATE YOUR NEW PROFILE</h1>
                </center>
                <form action="fileUploadAir.php" method="POST" enctype="multipart/form-data">
                    <input type="file" name="imageFile"><br/><br/>
                    <input type="submit" value="CONFIRM" class="btn btn-block btn-danger">
                </form>
                <br/>
                <form action="saveData.php" method="POST">
                    <input type="text" name="name" class="form-control" placeholder="Username" required=""><br/>
                    <input type="email" name="email" class="form-control" placeholder="Email Address"><br/>
                    <input type="number" name="contact" class="form-control" placeholder="Contact No" required=""><br/>
                    <input type="text" name="address" class="form-control" placeholder="Address" required=""><br/>
                    <input type="text" name="image" value="${img}" class="form-control" placeholder="Images Here" readonly><br/>
                    <input type="submit" value="BECOME A MEMBER" class="btn btn-danger" style="margin-left: 450px;">  
                </form>
            </div> 
            <div class="col-md-3"></div>
        </div>
    </body>
</html>