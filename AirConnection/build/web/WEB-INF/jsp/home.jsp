<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AllLink.jsp" %>
<%@include file="headerForAll.jsp" %>
<script src="js/welcomeJS.js" type="text/javascript"></script>
<!DOCTYTPE html>
<html>
    <head>

    </head>

    <body ng-app="simpleApp" ng-controller="simpleCtrl">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="img/heroImage.jpg" class="d-block w-100" alt="..." style="height: 550px;">
                                <div class="carousel-caption d-none d-md-block">
                                    <h2 class="display-4 text-light list-group-item active">NEWLY ARRIVED</h2>
                                    <a href="#" class="btn btn-danger m-3">ORDER NOW</a>
                                </div>
                            </div>
                            <div class="carousel-item" ng-repeat="ima in simples">
                                <img src="img/{{ima.image}}" class="d-block w-100" alt="..." style="height: 550px;">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>

            <!------------------------------------------------------->
        </div>


        <!----------------------------------------------------------->

        <div class="container mt-4">
            <center>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card" style="width: 15rem;">
                            <center>
                                <img class="card-img-top" src="img/opt1.png" alt="Card image cap" style="height: 200px; width: 200px; border-radius: 50%;">
                            </center>
                            <div class="card-body">
                                <p class="card-text">Tastes So Good, Cats Ask for It by Name . Melts in Your Mouth, Not in Your Hands. Tastes So Good</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card" style="width: 15rem;">
                            <center>
                                <img class="card-img-top" src="img/opt2.png" alt="Card image cap" style="height: 200px; width: 200px; border-radius: 50%;">
                            </center>
                            <div class="card-body">
                                <p class="card-text">Melts in Your Mouth, Not in Your Hands. Melts in Your Mouth, Not in Your Hands. elts in Your Mouth</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card" style="width: 15rem;">
                            <center>
                                <img class="card-img-top" src="img/opt3.png" alt="Card image cap" style="height: 200px; width: 200px; border-radius: 50%;">
                            </center>
                            <div class="card-body">
                                <p class="card-text">There are some things money can't buy. For everything else, there's MasterCard.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card" style="width: 15rem;">
                            <center>
                                <img class="card-img-top" src="img/opt4.png" alt="Card image cap" style="height: 200px; width: 200px; border-radius: 50%;">
                            </center>
                            <div class="card-body">
                                <p class="card-text">Like a Good Neighbor, State Farm is There. We Help the World Grow the Food It Needs</p>
                            </div>
                        </div>
                    </div>
                </div>
            </center>
        </div>
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
                                <a href="#" class="btn-floating halfway-fab waves-effect waves-light red" onclick="mc()" data-target="#mymodal" data-toggle="modal">
                                    <i class="fa fa-cart-plus fa-3x m-1 text-danger" style="float: right"></i>
                                </a>
                                <a class="button button-5 button-5a icon-remove bg-light text-danger btn-block" ng-click="showDetails(x)" data-target="#mymodal3" data-toggle="modal">
                                    <i class="fa fa-list text-danger"></i><span class="display-2" style="font-size: 18px;">Details</span></a>
                            </center>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- **************************MODAL STARTS*************************-->
        <div class="modal" id="mymodal3">
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
        <!----------------------------------------------------------->
        <div class="container" id="contactForm">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="jumbotron bg-light">
                        <h1 class="display-4">CONTACT US!</h1>
                        <hr class="my-4">
                        <form action="contactToWishlist.py" name="contactForm" method="POST">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">
                                    <i class="fa fa-user fa-1x mr-4 text-danger"></i>
                                </span>
                            </div>
                            <input type="text" name="username" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">
                                    <i class="fa fa-phone fa-1x mr-4 text-danger"></i>
                                </span>
                            </div>
                            <input type="number" ng-model="userContact" ng-pattern="/^[0-9]{11,11}$/" name="contact" class="form-control" placeholder="Contact" aria-label="Username" aria-describedby="basic-addon1">
                            <span ng-show="!contactForm.contact.$valid" class="text-danger">Invalid Number</span>
                        </div>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-comment fa-1x mr-4 text-danger"></i>
                                </span>
                            </div>
                            <textarea name="productname" class="form-control" aria-label="With textarea" placeholder="Write Your Message"></textarea>
                        </div>
                            <div class="input-group">
                                <input type="submit" value="SUBMIT" class="btn btn-danger px-5 py-2 m-3">
                        </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        <%@include file="./footerForAll.jsp" %>
        <script>
                    function mc() {
                        swal("Log In First", "You Are Not LOgged In!", "error");
                    }
        </script>
    </body>
</html>
