<%-- 
    Document   : newProductAdd
    Created on : Jun 13, 2019, 8:10:38 PM
    Author     : shaarif
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./AllLink.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-app="simpleAdmin" ng-controller="simpleAdminCtrl"> 
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="alert alert-danger" role="alert">
                    <span class="text-danger">
                        <c:out value="${msg}"></c:out>
                        </span> 
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <form action="fileUploadProduct.py" method="POST" enctype="multipart/form-data">
                        <input type="file" name="imageFile" style="height: 100px; width: 320px; cursor: grab; background-color: red; color: white;"><br/><br/>
                        <input type="submit" value="CONFIRM" class="btn btn-block btn-danger">
                    </form>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row mt-3">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <form action="saveDataProduct.py" method="POST">
                        <input type="text" name="name" class="form-control" placeholder="Product Name" required=""><br/>
                        <input type="text" name="brand" class="form-control" placeholder="Brand Name"><br/>
                        <input type="text" name="descr" class="form-control" placeholder="Product Description" required=""><br/>
                        <input type="number" name="price" class="form-control" placeholder="Product Price" required=""><br/>
                        <input type="number" name="stock" class="form-control" placeholder="Product In Stock" required=""><br/>
                        <select class="form-control" name="status">
                            <option value="">Catagory</option>
                            <option value="Low">Low Price (40000-50000)</option>
                            <option value="Medium">Medium Price (51000-80000)</option>
                            <option value="High">High Price (81000-100000)</option>
                        </select>
                        <br/>
                        <input type="text" name="dates" class="form-control" placeholder="Date Today" required=""><br/>
                        <input type="text" name="image" value="${img}" class="form-control" placeholder="Images Here" readonly><br/>
                    <input type="submit" value="ADD NEW PRODUCT" class="btn btn-danger" style="margin-left: 450px;">  
                </form>
            </div>
            <div class="col-md-2"></div>
        </div>
    </body>
</html>
