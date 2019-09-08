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
                    <h2>USER REVIEWS # {{review.length}}</h2>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchReview" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="row mb-2" ng-show="hiddenRowReply">
            <div class="col-md-2">
                <center>
                    <img src="img/{{replyReview.image}}" style="height: 100px; width: 100px; border-radius: 50%;">
                </center> 
            </div>

            <div class="col-md-7">
                <form ng-submit="finalReview(replyReview)" method="POST">
                    <input type="text" ng-model="replyReview.id" class="form-control" placeholder="Review Id" required="" readonly="">
                    <input type="text" ng-model="replyReview.contact"  class="form-control" placeholder="Member Contact" readonly="">
                    <input type="text" ng-model="replyReview.image"  class="form-control" placeholder="Image" required="" readonly="">
                    <textarea type="text" ng-model="replyReview.msg"  class="form-control" placeholder="Review Messege" required="" readonly=""></textarea><br/>
                    <textarea type="text" ng-model="replyReview.reply"  class="form-control" placeholder="Reply" required=""></textarea><br/>
                    <input type="submit" value="COMMIT REPLY" class="btn btn-danger" style="margin-left: 550px;">  
                </form>
            </div>
            <div class="col-md-3">
                <a href="#" class="btn btn-danger m-3" ng-click="hideReviewForm()">
                    <i class="fa fa-close fa-2x"></i>
                </a>
            </div>
        </div>

        <!---------------------------------------------------------->
        <!---------------------------------------------------------->
        <table class="table table-striped table-dark">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">USER IMAGE</th>
                    <th scope="col">USER CONTACT</th>
                    <th scope="col">USER MESSAGE</th>
                    <th scope="col" colspan="2">REPLY</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="rev in review | filter :searchReview">
                    <th scope="row">1</th>
                    <td>{{rev.id}}</td>
                    <td><img src="img/{{rev.image}}" style="width: 100px; height: 100px;"></td>
                    <td>{{rev.contact}}</td>
                    <td>{{rev.msg}}</td>
                    <td>{{rev.reply}}</td>
                    <td>
                        <a href="#" class="btn btn-danger m-3" ng-click="replyUser(rev)">
                            <i class="fa fa-edit"></i>
                        </a> 
                    </td>
                    <td>
                         <a href="#" class="btn btn-danger m-3" ng-click="deleteReply(rev)">
                            <i class="fa fa-close"></i>
                        </a> 
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
