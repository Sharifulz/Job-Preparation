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

                <div class="col-md-4">
                    <h3>TOTAL PRODUCT  #<span class="btn btn-danger text-light">{{simples.length}}</span></h3>
                </div>

                <div class="col-md-4">
                    <div class="md-form mt-0">
                        <input class="form-control" ng-model="searchProduct" type="text" placeholder="Search" aria-label="Search">
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <a href="addNewProduct.py" class="btn btn-danger">
                        <i class="fa fa-plus text-light"></i>
                    </a>
                </div>
            </div>
        </div>
        <!----------------------------------------------------------->
        <div class="row mb-2" ng-show="hiddenRow">
            <div class="col-md-1"></div>
            <div class="col-md-9">
                <form ng-submit="finalEditProduct(editProductData)" method="POST">
                    <input type="text" ng-model="editProductData.name" class="form-control" placeholder="Product Name" required=""><br/>
                    <input type="text" ng-model="editProductData.brand"  class="form-control" placeholder="Brand Name"><br/>
                    <input type="text" ng-model="editProductData.descr"  class="form-control" placeholder="Product Description" required=""><br/>
                    <input type="number" ng-model="editProductData.price"  class="form-control" placeholder="Product Price" required=""><br/>
                    <input type="number" ng-model="editProductData.stock"  class="form-control" placeholder="Product In Stock" required=""><br/>
                    <select ng-model="editProductData.status" class="form-control">
                         <option value="">Search By Catagory</option>
                        <option value="Low">Low Price (40000-50000)</option>
                        <option value="Medium">Medium Price (51000-80000)</option>
                        <option value="High">High Price (81000-100000)</option>
                    </select>
                    <br/>
                    <input type="text" ng-model="editProductData.dates" class="form-control" placeholder="Date Today" required=""><br/>
                    <input type="text" ng-model="editProductData.image" value="${img}" class="form-control" placeholder="Images Here" readonly><br/>
                    <input type="submit" value="UPDATE PRODUCT" class="btn btn-danger" style="margin-left: 200px;">  
                </form>
            </div>
            <div class="col-md-1 mr-1">
                <a href="#" class="btn btn-danger m-3" ng-click="hideEditForm()">
                    <i class="fa fa-close fa-2x"></i>
                </a>
            </div>
        </div>
        <!---------------------------------------------------------->
        <table class="table table-striped table-dark">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">PRODUCT NAME</th>
                    <th scope="col">BRAND</th>
                    <th scope="col">DESCRIPTION</th>
                    <th scope="col">PRICE</th>
                    <th scope="col">STOCK</th>
                    <th scope="col">STATUS</th>
                    <th scope="col">IMAGE</th>
                    <th scope="col">DATE</th>
                    <th scope="col" colspan="2">OPTION</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="pro in simples| filter:searchProduct">
                    <th scope="row">1</th>
                    <td>{{pro.id}}</td>
                    <td>{{pro.name}}</td>
                    <td>{{pro.brand}}</td>
                    <td>{{pro.descr}}</td>
                    <td>{{pro.price}}</td>
                    <td>{{pro.stock}}</td>
                    <td>{{pro.status}}</td>
                    <td><img src="img/{{pro.image}}" style="height: 100px; width: 100px; border-radius: 10px;"></td>
                    <td>{{pro.dates}}</td>
                    <td>
                        <a href="#" class="btn btn-danger m-3" ng-click="editProduct(pro)">
                            <i class="fa fa-edit"></i>
                        </a> 
                    </td>
                    <td>
                        <a href="#" class="btn btn-danger m-3" ng-click="deleteProduct(pro)">
                            <i class="fa fa-close"></i>
                        </a> 
                    </td>
                </tr>

            </tbody>
        </table>
    </body>
</html>
