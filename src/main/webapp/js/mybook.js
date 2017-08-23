
var app = angular.module("bookApp", []);


app.controller("bookController", ['$scope','$http',function( $scope, $http) {
	
	$scope.templates="";
	$scope.choosenTemplate=""
	 $scope.init = function(){

		  }
	 
	 $scope.getConnections = function() {
		 

	    };
	 $scope.showHome = function() {
		 		window.location.href="home";
			 
		    };
		    
		    $scope.showTempModal = function() { 
		   
		    	
		    	$http({
		            method : "POST",
		            url : "/slambook/getTemplates.html"
		        }).then(function mySucces(response) {
		        	$scope.templates=response.data;
		            console.log($scope.templates[0].imageUrl);
		            
		        }, function myError(error) {
		            console.log(error);
		        });
		  	$('#tempModal').modal('show');
		  	};
		    
		  	 $scope.createSlambook = function(template) {
				  		$scope.choosenTemplate=template;
				  		$('#tempModal').modal('hide');
					 		$('#slambookName').modal('show');
			    };
			    $scope.saveMySlambook = function() {
			    	var params={
			    			slambookName:$scope.slambookName,
			    			templateId:$scope.choosenTemplate.tempId
			    	}
			    	
			   
			    	$('#slambookName').modal('hide');
			    	$http({
			            method : "POST",
			            url : "/slambook/saveSlambook.html?slambookName="+$scope.slambookName+"&templateId="+$scope.choosenTemplate.tempId
		
			        }).then(function mySucces(response) {
			        	
			        	console.log(response);
			        }, function myError(error) {
			            console.log(error);
			        });
			    	
			  		
				    };
			    
		    
}]);


