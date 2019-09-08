<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./AllLink.jsp" %>

<!DOCTYTPE html>
<html>
    <head>

    </head>
    <span>
         E:\AirConnectionE\web\welcome.jsp 
    </span>
  
    <body ng-app="simpleApp" ng-controller="simpleCtrl">
        <a href="#" class="btn btn-danger">Include</a>
        {{9 * 9}}
        <h3>Image here</h3> 
        <img src="../image/co.jpg" style="height: 200px; width: 200px">
    <img src="img/cover1.jpg" alt="image 2" style="height: 200px; width: 200px">
        <!----------------------------------------------------------->
        <div class="container">
                <div class="col-md-4" ng-repeat="x in simples">
                    <div class="card">
                        <div class="card-image inner">
                            <img src="C:/Users/User/Documents/img/{{x.image}}">
                            <span class="card-title">{{x.name}}</span>
                            <a ng-click="addToCart(x)" class="btn-floating halfway-fab waves-effect waves-light red">
                                <i class="fa fa-plus fa-5x"></i></a>
                        </div>
                        <div class="card-content">
                            <p>{{x.descr}}</p>
                             <center>
                                <button class="button button-5 button-5a icon-remove bg-danger btn-block">
                                    <i class="fa fa-list"></i><span>Details</span></button>
                            </center>

                        </div>
                    </div>
                </div>
            </div>
        </div>



 
        <script>
                    console.log("hello js");
        </script>
    </body>
</html>
