$( document ).ready(function() {

	$("#clickadd").click( function(){
		$.ajax({
		    url: "/slambook/add.html",
		    type : "GET", 
		    async : true, 
		    success: function(data){
		    	console.log(data);
		    }
		});
		
});
	
});

var app = angular.module("myApp", []);


app.controller("searchController", function($scope) {
	$scope.genders=["male","female"];
	 $scope.init = function(user){
		    var userNew= JSON.stringify(user);
		 console.log(userNew);
		  }
});