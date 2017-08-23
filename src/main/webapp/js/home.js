
window.onload = function(e){ 
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
	$("#connection").click( function(){
		
		
	});
	
}

var app = angular.module("myApp", []);


app.controller("homeController", function($scope) {
	$scope.genders=["male","female"];
	 $scope.init = function(){

		  }
	 
	 $scope.getConnections = function() {
		 document.getElementById("connections").style.display = "block";
		 
		 document.getElementById("load-more-row").style.display = "block";
		 $(".connections .col").slice(0, 6).show();
		 document.getElementById("homePage").style.display = "none";

	    };
	  $("#load-more").click(function(e){ 
	        e.preventDefault();
	        $(".connections .col:hidden").slice(0, 10).show(); // select next 10 hidden divs and show them
	        if($(".connections .col:hidden").length == 0){ 
	        	 document.getElementById("load-more-row").style.display = "none"; 
	        }
	    });
	 $scope.showHome = function() {
		 
			 document.getElementById("connections").style.display = "none";
			 document.getElementById("homePage").style.display = "block";

		    };
		    
		    
});