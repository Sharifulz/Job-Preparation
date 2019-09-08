/* 
logoutfn
closeCreatePost
isCommentFormVisible
closeCommentForm
showComentForm
    $scope.showComentForm = function (post) 
    $scope.closeCommentForm = function (post) 
    $scope.showDetails = function (detailsData) 
    $scope.addToCart = function (aProduct)
 */

var appMember = angular.module("simpleMember", []);
appMember.controller("simpleMemberCtrl", function ($scope, $http) {
    swal("Congratulations!", "Welcome To Member Page!", "success");
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var time = new Date();
    var x = time.getDate();
    var y = time.getMonth();
    var z = time.getFullYear();

    $scope.timeNow = months[y] + " " + x + " , " + z;

    if (localStorage.getItem("userName") === null) {
        window.location = "loginFaileByUrl.jsp";
    } else {
        $scope.userName = localStorage.getItem("userName");
        $scope.userEmail = localStorage.getItem("userEmail");
        $scope.userContact = localStorage.getItem("userContact");
        $scope.userImage = localStorage.getItem("userImage");
    }

    $scope.logoutfn = function () {
        localStorage.removeItem("userName");
        localStorage.removeItem("userEmail");
        localStorage.removeItem("userContact");
        localStorage.removeItem("userImage");
    }
//----------------------------------------------------------
    $scope.isVisible = false;
    $scope.closeReview = function () {
        $scope.isVisible = false;
    }
    $scope.isVisiblePost = true;
    $scope.postShow = function () {
        $scope.isVisiblePost = true;
    }

    $scope.closeCreatePost = function () {
        $scope.isVisiblePost = false;
    }

    $scope.isCommentFormVisible = false;
    $scope.commentShowOnPost = 0;
    $scope.showComentForm = function (post) {
        $scope.isCommentFormVisible = true;
        $scope.commentShowOnPost = post.postid;

    }
    $scope.closeCommentForm = function (post) {
        $scope.isCommentFormVisible = false;
    }
    $scope.simples = [];
    $scope.cart = [];
    $scope.review = [];
    $scope.orders = [];
    $scope.userPost = [];
    $scope.postComment = [];
    $scope.reviews = {
        id: "",
        contact: "",
        image: "",
        msg: "",
        reply: ""
    };
    $scope.aCartProduct = {
        id: "",
        name: "",
        brand: "",
        price: "",
        qty: 1,
        total: 0,
        status: "",
        orderdate: ""
    };
    $scope.detailProduct = {
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
    $scope.postComments = {
        id: "",
        postid: "",
        username: $scope.userContact,
        comments: ""
    };
    $scope.isCommentFormVisible = false;
    $scope.commentShowOnPost = 0;
    $scope.showComentForm = function (post) {
        $scope.isCommentFormVisible = true;
        $scope.commentShowOnPost = post.postid;
        $scope.postComments.postid = post.postid;
    }
    $scope.closeCommentForm = function (post) {
        $scope.isCommentFormVisible = false;
    }
    $scope.showDetails = function (detailsData) {
        $scope.detailProduct.name = detailsData.name;
        $scope.detailProduct.brand = detailsData.brand;
        $scope.detailProduct.descr = detailsData.descr;
        $scope.detailProduct.price = detailsData.price;
        $scope.detailProduct.stock = "";
        $scope.detailProduct.status = detailsData.status;
        $scope.detailProduct.image = detailsData.image;
        $scope.detailProduct.dates = detailsData.dates;
    }
    $scope.addToCart = function (aProduct) {
        $scope.aCartProduct.id = aProduct.id;
        $scope.aCartProduct.name = aProduct.name;
        $scope.aCartProduct.brand = aProduct.brand;
        $scope.aCartProduct.price = aProduct.price;
        $scope.aCartProduct.stock = aProduct.stock;
        $scope.aCartProduct.orderDate = $scope.timeNow;
    }
    $scope.sendProductToCart = {
        id: "",
        username: "",
        productname: "",
        brand: "",
        qty: "",
        total: "",
        stockremain: "",
        orderdate: ""
    };
    $scope.sendProductToOrder = {
        id: "",
        username: "",
        productname: "",
        brand: "",
        qty: "",
        total: "",
        stockremain: "Not Delivered Yet",
        orderdate: ""
    };
    var userN ="";
    userN = $scope.userContact;
    $scope.modifiedusername = userN.slice(6);
    $scope.sendToCart = function (sendProduct) {
        $scope.sendProductToCart.username = $scope.userContact;
        $scope.sendProductToCart.productname = sendProduct.name;
        $scope.sendProductToCart.brand = sendProduct.brand;
        $scope.sendProductToCart.qty = sendProduct.qty;
        $scope.sendProductToCart.total = sendProduct.price * sendProduct.qty;
        $scope.sendProductToCart.stockremain = sendProduct.stock - sendProduct.qty;
        $scope.sendProductToCart.orderdate = sendProduct.orderDate;
        $http({
            method: 'POST',
            url: 'service/CartProduct',
            data: angular.toJson($scope.sendProductToCart),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(success, error);
    }
    refreshProductData();
    function refreshProductData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/product'
        }).then(function (response) {
            $scope.simples = response.data;
        });
    }
    refreshCartData();
    function refreshCartData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/CartProduct/' + $scope.userContact
        }).then(function (response) {
            $scope.cart = response.data;
        });
    }
    refreshOrderData();
    function refreshOrderData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/OrderData/' + $scope.userContact
        }).then(function (response) {
            $scope.orders = response.data;
        });
    }
//------------------------------------------------------------------------
    refreshAllReviews();
    function refreshAllReviews() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/ReviewData/aUserReview/' + $scope.userContact
        }).then(function (response) {
            $scope.review = response.data;
        });
    }
    refreshNewsFeedData();
    function refreshNewsFeedData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/postData'
        }).then(function (response) {
            $scope.userPost = response.data;
        });
    }
    refreshNewsFeedComments();
    function refreshNewsFeedComments() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/postCommentService'
        }).then(function (response) {
            $scope.postComment = response.data;
        });
    }
    //------------------------------------------------------------------------
    $scope.purchaseData = function (orderProduct) {
        $scope.sendProductToOrder.username = $scope.userContact;
        $scope.sendProductToOrder.productname = orderProduct.productname;
        $scope.sendProductToOrder.brand = orderProduct.brand;
        $scope.sendProductToOrder.qty = orderProduct.qty;
        $scope.sendProductToOrder.total = orderProduct.total;
        $scope.sendProductToOrder.orderdate = $scope.timeNow;
        //---------------------------------------------------------------------      
        $http({
            method: 'POST',
            url: 'service/CartProduct/order',
            data: angular.toJson($scope.sendProductToOrder),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(success, error);
//----------------------------------------------------------------------
        $http({
            method: 'DELETE',
            url: 'service/CartProduct/delete/' + orderProduct.id
        }).then(success, error);
    }
//--------------------------------------------------------------------  
    $scope.removeProduct = function (simple) {
        $http({
            method: 'DELETE',
            url: 'service/CartProduct/delete/' + simple.id
        }).then(success, error);
    };
    //--------------------------------------------------------------------  
    $scope.deletePost = function (postDelete) {
        $http({
            method: 'DELETE',
            url: 'service/postData/delete/' + postDelete.postid
        }).then(success, error);
    }; 
    $scope.deleteComment = function (commentDelete) {
        $http({
            method: 'DELETE',
            url: 'service/postCommentService/delete/' + commentDelete.id
        }).then(success, error);
    };
//----------------------------------------------------------------------
    $scope.reviewUser = function () {
        refreshOrderData();
        if ($scope.orders.length > 0) {
            $scope.reviews.contact = $scope.userContact;
            $scope.reviews.image = $scope.userImage;
            $scope.isVisible = true;
        } else {
            swal("No Orders Yet!", "You haven't buy anything yet!", "error");
        }
    }
    $scope.submitReview = function (reviewData) {
        $scope.reviews.contact = reviewData.contact;
        $scope.reviews.image = reviewData.image;
        $scope.reviews.msg = reviewData.msg;
        $scope.isVisible = false;
        $http({
            method: 'POST',
            url: 'service/ReviewData',
            data: angular.toJson($scope.reviews),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(success, error);
    }
    $scope.sendCommentFromUser = function (aComments) {
        $scope.postComments.postid = aComments.postid;
        $scope.postComments.username = aComments.username;
        $scope.postComments.comments = aComments.comments;
        $scope.isCommentFormVisible = false;
        $http({
            method: 'POST',
            url: 'service/postCommentService',
            data: angular.toJson($scope.postComments),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(success, error);
    }
    function success(response) {
        refreshAllReviews();
        refreshProductData();
        refreshCartData();
        refreshOrderData();
        refreshNewsFeedData();
        refreshNewsFeedComments();
    }
    function error(response) {
        console.log(response.statusText);
    }
});
//------------------------------------
