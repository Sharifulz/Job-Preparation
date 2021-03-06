<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./AllLink.jsp" %>

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
        <!----------------------------------------------------------->
        <div class="row bg-dark">
            <div class="col-md-1">
            </div>
            <div class="col-md-5">
                <table>
                    <tr>
                        <td></td>
                    </tr>
                </table> 
            </div>
            <div class="col-md-5">
                <ul>
                    <li><a href="logoutAdmin.py">LOG OUT</a></li>
                    <li><a href="" ng-click="reviewUser()">ADMIN</a></li>
                </ul>
            </div>
        </div>
         <!-- **************************MODAL STARTS*************************-->
         <div class="modal text-center" id="mymodal2">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content" style="width: 850px;">
                    <div class="modal-header">
                        <h3 class="text-primary">Product Details</h3>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <!-------------------------------FORMS------------------------>
                        <form action="" method="post">
                            <table class="table table-light">
                                            <thead>
                                                <tr>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">PRODUCT ID</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">PRODUCT NAME</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">PRODUCT BRAND</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">UNIT PRICE</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">QUANTITY</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">TOTAL</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">OPTIONS</td>
                                                    <td scope="col" class="text-primary"></td>
                                                </tr>
                                            </thead>
                                            <tr ng-repeat="p in cart" scope="row" class="text-dark">

                                                <td>{{p.id}}</td>
                                                <td>{{p.productname}}</td>
                                                <td>{{p.brand}}</td>
                                                <td>{{p.price}}</td>
                                                <td>{{p.qty}}</td>
                                                <td>{{p.total}}</td>
                                                <td> 
                                                    <a href="#" data-target="#mymodal2" data-toggle="modal"  class="btn btn-primary" data-dismiss="modal" ng-click="purchaseData(p)">
                                                        <i class="fa fa-dollar fa-1x text-light m-1">PAYMENT</i>
                                                    </a>

                                                </td>
                                                <td> 
                                                    <a href=""  class="btn btn-danger" ng-click="removeProduct(p)">
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

    </body>
</html>
