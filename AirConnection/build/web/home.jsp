<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./AllLink.jsp" %>
<%@include file="./headerForAll.jsp" %>
<script src="js/welcomeJS.js" type="text/javascript"></script>
<!DOCTYTPE html>
<html>
    <head>

    </head>

    <body ng-app="simpleApp" ng-controller="simpleCtrl">
<!-- simpleApp js file path /web/myJs/welcomeJs.js
sign in pages is on --> /web/web-inf/views/headerForAll.jsp 



-->

        <!----------------------------------------------------------->
        <hr/>
        <div class="container">
            <div class="row">
            <div class="col-md-4" ng-repeat="x in simples">
                <div class="card">
                    <div class="card-image inner">
                        <img src="img/{{x.image}}" style="height: 250px; width: 350px;">
                    </div>
                    <div class="card-content">
                        <p>{{x.descr}}</p>
                        <table>
                            <tr>
                                <td>Name</td>
                                <td><span>{{x.name}}</span></td>
                            </tr>
                            <tr>
                                <td>Brand</td>
                                <td><span>{{x.brand}}</span></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td> <span>{{x.descr}}</span></td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td><span>{{x.price}}</span></td>
                            </tr>
                            <tr>
                                <td>Stock</td>
                                <td><span>{{x.stock}}</span></td>
                            </tr>
                            <tr>
                                <td>Status</td>
                                <td><span>{{x.status}}</span></td>
                            </tr>
                            <tr>
                                <td>Dates</td>
                                <td><span>{{x.dates}}</span></td>
                            </tr>
                        </table>
                        <center>
                            <a href="#" ng-click="addToCart(x)" class="btn-floating halfway-fab waves-effect waves-light red" onclick="mc()" data-target="#mymodal" data-toggle="modal">
                            <i class="fa fa-plus fa-5x m-1 text-danger" style="float: right"></i>
                        </a>
                            <button class="button button-5 button-5a icon-remove bg-danger btn-block">
                                <i class="fa fa-list"></i><span>Details</span></button>
                        </center>

                    </div>
                </div>
            </div>
        </div>
        </div>
  



    <!----------------------------------------------------------->

    <script>
        //-----------------------------------------------------------
        function mc() {
            swal({
                title: "Sign In First",
                text: "You need to Sign in before order!",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-success bg-success",
                closeButtonClass: "btn-danger bg-danger",
                confirmButtonText: "Okay, Lets Sign In!",
                closeOnConfirm: false
            },
                    function () {
                       
                    });
        }
    </script>
</body>
</html>
