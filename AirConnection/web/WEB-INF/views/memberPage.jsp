<%@include file="/memberHeader.jsp" %> <!-- /memberHeader.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #modalTable td{
                color: black;
                border-bottom: 1px solid red;
            }
            td{
                margin-left: 15px;  
                color: black;
                font-size: 20px;
            }
            .modal-dialog{
                width: 860px;
            }
        </style>
    </head>
    <body ng-app="simpleMember" ng-controller="simpleMemberCtrl"> 
        <!----------------------------------------------------------->

        <!---------------------------------------------------------->
        <div class="row" ng-show="isVisible">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <form>

                    <div class="form-group">
                        <input type="hidden" ng-model="reviews.contact" class="form-control" id="exampleInputPassword1" placeholder="Contacts">
                    </div>
                    <div class="form-group">
                        <input type="hidden" ng-model="reviews.image" class="form-control" id="exampleInputPassword1" placeholder="Image">
                    </div>
                    <div class="form-group">
                        <textarea type="text" ng-model="reviews.msg" class="form-control" id="exampleInputPassword1" placeholder="Message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary" ng-click="submitReview(reviews)">Submit</button>
                </form>
            </div>
            <div class="col-md-2">
                <a href="" ng-click="closeReview()">
                    <i class="fa fa-close fa-2x text-danger"></i>
                </a>
            </div>
        </div>
        <!----------------------------------------------------------->
        <hr/>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-search fa-2x mr-4 text-danger"></i>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchItem" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <select ng-model="searchItem" class="form-control">
                        <option value="">Search By Catagory</option>
                        <option value="Low">Low Price (40000-50000)</option>
                        <option value="Medium">Medium Price (51000-80000)</option>
                        <option value="High">High Price (81000-100000)</option>
                    </select>
                </div>
            </div>
        </div>
        <hr/>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-4" ng-repeat="x in simples| filter : searchItem">
                    <div class="card shadow p-3 mb-5 bg-white rounded">
                        <div class="card-image inner">
                            <img src="img/{{x.image}}" style="height: 250px; width: 310px;">
                        </div>
                        <div class="card-content">
                            <p class="text-info" style="font-size: 18px; text-align: center;">{{x.descr}}</p>
                            <table>
                                <tr>
                                    <td><i class="fa fa-certificate fa-2x mr-4 text-danger"></i></td>
                                    <td><span>{{x.name}}</span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-copyright fa-2x mr-4 text-danger"></i></td>
                                    <td><span>{{x.brand}}</span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-dollar fa-2x mr-4 text-danger"></i></td>
                                    <td><span>{{x.price}}</span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-list fa-2x mr-4 text-danger"></i></td>
                                    <td><span>{{x.status}}</span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-calendar fa-2x mr-4 text-danger"></i></td>
                                    <td><span>{{x.dates}}</span></td>
                                </tr>
                            </table>
                            <center>
                                <a href="#" ng-click="addToCart(x)" class="btn-floating halfway-fab waves-effect waves-light red" data-target="#mymodal" data-toggle="modal">
                                    <i class="fa fa-cart-plus fa-3x m-1 text-danger" style="float: right"></i>
                                </a>
                                <a class="button button-5 button-5a icon-remove bg-light text-danger btn-block" ng-click="showDetails(x)" data-target="#mymodal4" data-toggle="modal">
                                    <i class="fa fa-list text-danger"></i><span class="display-2" style="font-size: 18px;">Details</span></a>
                            </center>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!------------------------------------------------------------->
        <!-- **************************MODAL STARTS*************************-->
        <div style="width: 600px;">
            <div class="modal" id="mymodal">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" >
                        <div class="modal-header" >
                            <h3 class="text-dark" style="margin-left: 180px;">DESCRIPTION</h3>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <!-------------------------------FORMS------------------------>
                            <form action="" method="post">
                                <table class="table table-striped table-light" id="modalTable">
                                    <tr>
                                        <td scope="col" colspan="2">
                                    <center>
                                        <img src="img/cartImage.gif" style="border-radius: 80px">  
                                    </center>
                                    </td>

                                    </tr>
                                    <tr>
                                        <td scope="col">Name</td>
                                        <td><span>{{aCartProduct.name}}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Brand</td>
                                        <td><span>{{aCartProduct.brand}}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Price</td>
                                        <td><span>{{aCartProduct.price}}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Quantity</td>
                                        <td>
                                            <input type="number" min="1" class="form-control" ng-model="aCartProduct.qty">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <td> 
                                            <span>{{aCartProduct.price * aCartProduct.qty}}</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Dates</td>
                                        <td><span>{{aCartProduct.orderDate}}</span></td>
                                    </tr>
                                </table>
                                <input type="submit" name="submit" value="ADD TO CART" data-dismiss="modal" class="btn btn-danger btn-block" ng-click="sendToCart(aCartProduct)"/>
                            </form>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!-- **************************MODAL STARTS*************************-->
        <div class="modal" id="mymodal4">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content" style="width: 650px;">
                    <div class="modal-header">
                        <h3 class="text-dark">PRODUCT DETAILS</h3>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <!---------------------------------------------------------->
                        <table class="table table-striped table-light">

                            <tr>
                                <th scope="col" colspan="2">
                                    <img src="img/{{detailProduct.image}}" style="height: 300px; width: 600px; border-radius: 5px;"
                                </th>
                            </tr>
                            <tr>
                                <th scope="col" class="display-4 text-dark">{{detailProduct.name}}</th>
                                <th scope="col" class="display-4 text-danger">
                                    <i class="fa fa-dollar m-2 text-danger"></i>
                                    {{detailProduct.price}}</th>
                            </tr>
                            <tr>
                                <th scope="col" colspan="2">
                                    <i class="fa fa-list fa-1x mr-4 text-danger"></i>
                                    <span class="text-info" style="font-family: sans-serif; font-weight: 100; font-size: 18px; font-style: normal; text-align: center">{{detailProduct.descr}}</span>
                                </th>
                            </tr>
                            <tr>
                                <th scope="col"></th>
                                <th scope="col">
                                    <i class="fa fa-calendar fa-1x mr-4 text-danger"></i>
                                    <span class="text-info" style="font-family: sans-serif; font-weight: 100; font-size: 18px; font-style: normal; text-align: center">{{detailProduct.dates}}</span>
                                </th>
                            </tr>
                        </table>
                    </div>
                </div>      
            </div>
        </div>
        
             <%@include file="./footerForAll.jsp" %>
    </body>
</html>
