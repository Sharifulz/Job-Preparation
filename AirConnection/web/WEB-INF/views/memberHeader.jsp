<!-- useless
-->
<%@include file="./AllLink.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYTPE html>
<html>
    <head>

        <style>
            ul{
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                margin-right: 25px;
                text-decoration: none;
            }
            li{
                float: right;

            }
            li a{
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }
            li a:hover{
                background-color: white;
                color: black;
                border-bottom: 2px solid black;
                transition: all 1.0s ease;
            }
        </style>
    </head>

    <body>


        <div class="row">
            <div class="col-md-2">
                <div class="spinner-grow text-danger ml-3" role="status">
                </div>
                <span>Air Connection</span>
            </div>
            <div class="col-md-4">
                <i class="fa fa-home fa-2x text-danger"></i>
                <span style="margin: 10px;"> Address : Khilgaon, Goran, Dhaka-1219</span>
            </div>
            <div class="col-md-3">
                <i class="fa fa-phone fa-2x text-danger"></i>
                <span style="margin: 10px;"> Contacts # 01969037346</span>

            </div>
            <div class="col-md-1">
                <a href="" ng-click="showCart()" data-target="#mymodal2" data-toggle="modal">
                    <i class="fa fa-cart-plus fa-2x text-danger"></i></a>
                <span style="margin: 10px;"># {{cart.length}}</span>

            </div>
            <div class="col-md-1">
                <a href="" ng-click="showCart()" data-target="#mymodal3" data-toggle="modal">
                    <i class="fa fa-bell fa-2x text-danger"></i></a>
                <span style="margin: 10px;"># {{review.length}}</span>

            </div>
        </div>
        <!----------------------------------------------------------->
        <div class="row bg-dark">
            <div class="col-md-1">
            </div>
            <div class="col-md-5">

            </div>
            <div class="col-md-5">
                <ul>
                    <li><a href="logoutUser.py" ng-click="logoutfn()">LOG OUT</a></li>
                    <li><a href="" ng-click="reviewUser()">GIVE FEEDBACK</a></li>
                    <li><a href="newsFeed.py">NEWS FEEDs</a></li>
                    <li><a href="productPage.py">PRODUCT</a></li>
                </ul>
            </div>
        </div>

        <div class="container mt-3">
            <div class="row">
                <div class="col-md-2">
                    <img src="img/{{userImage}}" style="height: 50px; width: 50px; border-radius: 50%; margin-left: 20px;">
                </div>

                <div class="col-md-2">
                    <span>
                        <i class="fa fa-envelope fa-2x text-danger"></i> <span>{{userEmail}}</span>
                        <span> 
                            </div>  
                            <div class="col-md-5"></div>
                            <div class="col-md-3">
                                
                                    <a href="postPage.py">
                                        <i class="fa fa-play fa-2x text-danger mr-4"></i>CREATE POST
                                    </a>
                               
                            </div>
                            </div>
                            </div>

                            <!-- **************************MODAL STARTS*************************-->
                            <div class="modal text-center" id="mymodal2">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content" style="width: 850px;">
                                        <div class="modal-header">
                                            <h3 class="text-dark">PRODUCT DETAILS</h3>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <!-------------------------------FORMS------------------------>
                                            <form action="" method="post">
                                                <table class="table table-light" style="width: 550px;">
                                                    <thead>
                                                        <tr>
                                                            <td scope="col" class="text-dark" style="border-bottom: 1px solid red;">NAME</td>
                                                            <td scope="col" class="text-dark" style="border-bottom: 1px solid red;">BRAND</td>
                                                            <td scope="col" class="text-dark" style="border-bottom: 1px solid red;">QUANTITY</td>
                                                            <td scope="col" class="text-dark" style="border-bottom: 1px solid red;">TOTAL</td>
                                                            <td scope="col" class="text-dark" style="border-bottom: 1px solid red;" colspan="2">OPTIONS</td>

                                                        </tr>
                                                    </thead>
                                                    <tr ng-repeat="p in cart" scope="row" class="text-dark">

                                                        <td>{{p.productname}}</td>
                                                        <td>{{p.brand}}</td>
                                                        <td>{{p.qty}}</td>
                                                        <td>{{p.total}}</td>
                                                        <td> 
                                                            <a href="#" class="btn btn-primary" data-dismiss="modal" ng-click="purchaseData(p)">
                                                                <i class="fa fa-dollar fa-1x text-light m-1">CONFIRM</i>
                                                            </a>

                                                        </td>
                                                        <td> 
                                                            <a href="#" class="btn btn-danger" ng-click="removeProduct(p)">
                                                                <i class="fa fa-close fa-1x text-light m-1"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>

                                    </div>

                                </div>
                            </div>

                            <!-- **************************MODAL STARTS 3333333333*************************-->
                            <div class="modal text-center" id="mymodal3">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content" style="width: 850px;">
                                        <div class="modal-header">
                                            <h3 class="text-dark">MESSAGE BOX</h3>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <!-------------------------------FORMS------------------------>
                                            <form action="" method="post">
                                                <table class="table table-light" style="width: 600px;">
                                                    <thead>
                                                        <tr>
                                                            <td scope="col" class="text-primary"></td>
                                                            <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">USER MESSEGE</td>

                                                            <td scope="col" class="text-primary"></td>
                                                            <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">ADMIN REPLY</td>
                                                        </tr>
                                                    </thead>
                                                    <tr ng-repeat="re in review" scope="row" class="text-dark">
                                                        <td scope="col" class="text-primary"><i class="fa fa-comment text-danger"></i></td>
                                                        <td class="bg-light text-dark">

                                                            {{re.msg}}</td>
                                                        <td scope="col" class="text-primary"><i class="fa fa-comment text-danger"></i></td>
                                                        <td class="bg-danger bg-light">

                                                            {{re.reply}}</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            </body>
                            </html>
