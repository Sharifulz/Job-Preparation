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


        <div class="row">
            <div class="col-md-3">
                <div class="spinner-grow text-danger ml-3" role="status">

                </div>
                <span>A Connection</span>
            </div>
            <div class="col-md-4">
                <i class="fa fa-home fa-2x text-danger"></i>
                <span style="margin: 10px;"> Address : Khilgaon, Goran, Dhaka-1219</span>
            </div>
            <div class="col-md-3">
                <i class="fa fa-phone fa-2x text-danger"></i>
                <span style="margin: 10px;"> Contacts # 01969037346</span>

            </div>
            <div class="col-md-2">
                <a href="" ng-click="showCart()" data-target="#mymodal2" data-toggle="modal">
                    <i class="fa fa-cart-plus fa-2x text-danger"></i></a>
                <span style="margin: 10px;"># {{cart.length}}</span>

            </div>
        </div>
        <!----------------------------------------------------------->
        <div class="row bg-danger">
            <div class="col-md-5">
                <center>
                    <span style="font-size: 25px; font-family: inherit; font-style: italic; color: white; margin-top: 35px;">
                        Air Connection</span>
                </center>     
            </div>
            <div class="col-md-7">
                <ul>
                    <li><a href="redirectSignin.py">SIGN IN</a></li> 
                    <li><a href="mainPage.py">HOME</a></li>
                </ul>
            </div>
        </div>


        <!----------------------------------------------------------->
        <!-- **************************MODAL STARTS*************************-->
        <div class="modal" id="mymodal2">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="text-primary" style="margin-left: 180px;">Product Details</h3>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <h1>Header For All</h1>
                    </div>

                </div>

            </div>
        </div>

    </body>
</html>
