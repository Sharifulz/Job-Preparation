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
                    <h3>TOTAL ORDER  #<span class="btn btn-danger text-light">{{orders.length}}</span></h3>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchOrder" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <form action="report.jsp">
                        <i class="fa fa-download fa-3x mr-1">
                        </i> <span><a href="img/document.pdf" class="btn btn-danger">DOWNLOAD</a></span>
                    </form>
                </div>
            </div>
        </div>


        <table class="table table-striped table-dark">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">USERNAME</th>
                    <th scope="col">PRODUCT NAME</th>
                    <th scope="col">BRAND</th>
                    <th scope="col">QUANTITY</th>
                    <th scope="col">TOTAL</th>
                    <th scope="col">DELIVERY STATUS</th>
                    <th scope="col">ORDER DATE</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="ord in orders| filter:searchOrder">
                    <th scope="row">1</th>
                    <td>{{ord.id}}</td>
                    <td>{{ord.username}}</td>
                    <td>{{ord.productname}}</td>
                    <td>{{ord.brand}}</td>
                    <td>{{ord.qty}}</td>
                    <td>{{ord.total}}</td>
                    <td>{{ord.stockremain}}</td>
                    <td>{{ord.orderdate}}</td>
                    <td>
                        <a href="#" class="btn btn-danger" ng-click="deleteOrder(ord)">
                            <i class="fa fa-close text-light text-danger"></i>
                        </a>
                    </td>
                    <td>
                        <a href="#" ng-show="ord.stockremain == 'Not Delivered Yet'" class="btn btn-success" ng-click="aMethodCalled(ord)">
                            <i class="fa fa-check text-light"></i>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
