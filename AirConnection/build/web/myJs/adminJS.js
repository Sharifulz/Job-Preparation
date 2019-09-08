/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var appAdmin = angular.module("simpleAdmin", []);
appAdmin.controller("simpleAdminCtrl", function ($scope, $http) {

    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var time = new Date();
    var x = time.getDate();
    var y = time.getMonth();
    var z = time.getFullYear();
    $scope.timeNow = months[y] + " " + x + " , " + z;
    $scope.isVisibleProductForm = false;
    $scope.hiddenRow = false;
    $scope.hiddenRowReply = false;
    $scope.hideEditForm = function () {
        $scope.hiddenRow = false;
    }
    $scope.hideReviewForm = function () {
        $scope.hiddenRowReply = false;
    }

    $scope.simples = [];
    $scope.aProduct = [];
    $scope.cart = [];
    $scope.orders = [];
    $scope.member = [];
    $scope.review = [];
    $scope.wishlist = [];
    $scope.userPostForAdmin = [];
    refreshProductDataAdmin();
    function refreshProductDataAdmin() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/product'
        }).then(function (response) {
            $scope.simples = response.data;
        });
    }
    refreshCartDataAdmin();
    function refreshCartDataAdmin() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/CartProduct/allCart'
        }).then(function (response) {
            $scope.cart = response.data;
        });
    }
    refreshOrderDataAdmin();
    function refreshOrderDataAdmin() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/OrderData/getAllData'
        }).then(function (response) {
            $scope.orders = response.data;
        });
    }
    refreshAllMemberData();
    function refreshAllMemberData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/member'
        }).then(function (response) {
            $scope.member = response.data;
        });
    }
    refreshAllReviews();
    function refreshAllReviews() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/ReviewData'
        }).then(function (response) {
            $scope.review = response.data;
        });
    }
    
    contactMessageFromWishlist();
    function contactMessageFromWishlist() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/contactMessageWishlist'
        }).then(function (response) {
            $scope.wishlist = response.data;
        });
    }
    
    refreshNewsFeedData();
    function refreshNewsFeedData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/postData'
        }).then(function (response) {
            $scope.userPostForAdmin = response.data;
        });
    }
//------------------------------------------------------------------------

//------------------------------------------------------------------------
    $scope.deleteOrder = {
        id: "",
        username: "",
        productname: "",
        brand: "",
        qty: "",
        total: "",
        stockremain: "",
        orderdate: ""
    };
    $scope.editProductData = {
        id: "",
        name: "",
        brand: "",
        descr: "",
        price: "",
        stock: "",
        status: "",
        image: "",
        dates: ""
    };

    $scope.editOrderData = {
        id: "",
        username: "",
        productname: "",
        brand: "",
        qty: "",
        total: "",
        stockremain: "",
        orderdate: ""
    };
    $scope.editOrderSold = {
        id: "",
        username: "",
        productname: "",
        brand: "",
        qty: "",
        total: "",
        stockremain: "",
        orderdate: ""
    };
    $scope.stockAfterDeliver = {
        id: "",
        name: "",
        brand: "",
        descr: "",
        price: "",
        stock: "",
        status: "",
        image: "",
        dates: ""
    };
    $scope.replyReview = {
        id: "",
        contact: "",
        image: "",
        msg: "",
        reply: ""
    };
    $scope.deleteOrder = function (deleteData) {
        $scope.deleteOrder.id = deleteData.id;
        $http({
            method: 'DELETE',
            url: 'service/OrderData/delete/' + deleteData.id
        }).then(success, error);
    }

    $scope.editProduct = function (aProduct) {
        $scope.hiddenRow = true;
        $scope.editProductData.id = aProduct.id;
        $scope.editProductData.name = aProduct.name;
        $scope.editProductData.brand = aProduct.brand;
        $scope.editProductData.descr = aProduct.descr;
        $scope.editProductData.price = aProduct.price;
        $scope.editProductData.stock = aProduct.stock;
        $scope.editProductData.status = aProduct.status;
        $scope.editProductData.image = aProduct.image;
        $scope.editProductData.dates = aProduct.dates;
    }

    $scope.finalEditProduct = function (editProductData) {
        $scope.hideEditForm();
        $http({
            method: "PUT",
            url: 'service/product/update/' + editProductData.id,
            data: angular.toJson(editProductData),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(success, error);
    }

    $scope.finalReview = function (replyReview) {
        $scope.hideReviewForm();
        $http({
            method: "PUT",
            url: 'service/ReviewData/update/' + replyReview.id,
            data: angular.toJson(replyReview),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(success, error);
    }

    $scope.replyUser = function (rev) {
        $scope.hiddenRowReply = true;
        $scope.replyReview.id = rev.id;
        $scope.replyReview.contact = rev.contact;
        $scope.replyReview.image = rev.image;
        $scope.replyReview.msg = rev.msg;
        $scope.replyReview.reply = rev.reply;
    }

    $scope.aMethodCalled = function (deliverData) {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/product/getOneProduct/' + deliverData.productname
        }).then(function (response) {
            $scope.aProduct = response.data;
            //-----------
            $scope.remainStock = $scope.aProduct[0].stock - deliverData.qty;

            $scope.editProductData.name = $scope.aProduct[0].name;
            $scope.editProductData.brand = $scope.aProduct[0].brand;
            $scope.editProductData.descr = $scope.aProduct[0].descr;
            $scope.editProductData.price = $scope.aProduct[0].price;
            //-----------
            $scope.editProductData.stock = $scope.remainStock;
            $scope.editProductData.status = $scope.aProduct[0].status;
            $scope.editProductData.image = $scope.aProduct[0].image;
            $scope.editProductData.dates = $scope.aProduct[0].dates;
            //------------ Delivered Order Updateing Product Stock
            $http({
                method: "PUT",
                url: 'service/product/update/' + $scope.aProduct[0].id,
                data: angular.toJson($scope.editProductData),
                headers: {
                    'Content-Type': 'application/json'
                }
            }).then(successUp(deliverData), error);
        });

    }




    $scope.deleteProduct = function (pro) {
        $http({
            method: 'DELETE',
            url: 'service/product/delete/' + pro.id
        }).then(success, error);
    }

    $scope.deleteReply = function (rev) {
        $http({
            method: 'DELETE',
            url: 'service/ReviewData/delete/' + rev.id
        }).then(success, error);
    }

    $scope.deleteUser = function (mem) {
        $http({
            method: 'DELETE',
            url: 'service/member/delete/' + mem.id
        }).then(success, error);
    }
     $scope.deletePost = function (postDelete) {
        $http({
            method: 'DELETE',
            url: 'service/postData/delete/' + postDelete.postid
        }).then(success, error);
    };
    $scope.successUpdate = function (deliverData) {
        //--------------Delivered Order Updateing OrderStatus
        $scope.editOrderSold.id = deliverData.id;
        $scope.editOrderSold.username = deliverData.username;
        $scope.editOrderSold.productname = deliverData.productname;
        $scope.editOrderSold.brand = deliverData.brand;
        $scope.editOrderSold.qty = deliverData.qty;
        $scope.editOrderSold.total = deliverData.total;
        $scope.editOrderSold.stockremain = "Delivery Complete";
        $scope.editOrderSold.orderdate = deliverData.orderdate;
        var method ="";
        var url ="";
        method = "PUT";
        url = 'service/OrderData/update/' + $scope.editOrderSold.id;

        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.editOrderSold),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(success, error);

    };



    function success() {
        refreshOrderDataAdmin();
        refreshAllMemberData();
        refreshAllReviews();
        refreshCartDataAdmin();
        refreshProductDataAdmin();
        refreshNewsFeedData();
    }
    function successUp(response) {
        $scope.successUpdate(response);
    }

    function error(response) {
        console.log(response.statusText);
    }

});
//------------------------------------
