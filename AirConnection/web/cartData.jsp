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
                    <h2>PRODUCT IN CART # {{cart.length}}</h2>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchCart" type="text" placeholder="Search" aria-label="Search">
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
                    <th scope="col">PRODUCT NAME</th>
                    <th scope="col">BRAND</th>
                    <th scope="col">QUANTITY</th>
                    <th scope="col">TOTAL</th>
                    <th scope="col">STOCK REMAIN</th>
                    <th scope="col">ORDER DATE</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="cartData in cart| filter: searchCart">
                    <th scope="row">1</th>
                    <td>{{cartData.id}}</td>
                    <td>{{cartData.username}}</td>
                    <td>{{cartData.productname}}</td>
                    <td>{{cartData.brand}}</td>
                    <td>{{cartData.qty}}</td>
                    <td>{{cartData.total}}</td>
                    <td>{{cartData.stockremain}}</td>
                    <td>{{pro.orderdate}}</td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
