/* 
This file has the method 
    loginControl
    refreshProductData();
    showDetails
    array simples[]
 */
var app = angular.module("simpleApp", []);
app.controller("simpleCtrl", function ($scope, $http) {
    $scope.valueTest = 55;
    //----------------------------------------------------------

    $scope.formLogin = {
        contact: "",
        password: ""
    };
        //-----------------------------------------------------------
      $scope.detailProduct = {
        id:"",  
        name:"",  
        brand:"",  
        descr:"",  
        price:"",  
        stock:"",  
        status:"",  
        image:"",  
        dates:""  
      }; 
    $scope.simples = [];
    $scope.loginControl = function () {
      
        $http({
            method: 'GET',
            url: 'http://localhost:8080/service/login/getUser/' + $scope.formLogin.contact + "," + $scope.formLogin.password
        }).then(function successCallback(response) {
            $scope.simples = response.data;
           
            if ($scope.simples.length == 1) {
                localStorage.setItem("userName", $scope.simples[0].name);
                localStorage.setItem("userEmail", $scope.simples[0].email);
                localStorage.setItem("userContact", $scope.simples[0].contact);
                localStorage.setItem("userImage", $scope.simples[0].image);
                window.location = "memberPage.jsp"; // /memberPage.jsp and /memberHeader.jsp
            } else {
                swal("Log In Failed!", "Check your information again!", "error");
            }

        }, function errorCallback(response) {
            console.log(response.statusText);
        });
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
       $scope.detailProduct = {
        id:"",  
        name:"",  
        brand:"",  
        descr:"",  
        price:"",  
        stock:"",  
        status:"",  
        image:"",  
        dates:""  
      };
    $scope.showDetails = function (detailsData){
        $scope.detailProduct.name = detailsData.name;
        $scope.detailProduct.brand = detailsData.brand;
        $scope.detailProduct.descr = detailsData.descr;
        $scope.detailProduct.price = detailsData.price;
        $scope.detailProduct.stock = "";
        $scope.detailProduct.status = detailsData.status;
        $scope.detailProduct.image = detailsData.image;
        $scope.detailProduct.dates = detailsData.dates;
    }
    
// success and error method
    function success(response) {
    }

    function error(response) {
        console.log(response.statusText);
    }


});

