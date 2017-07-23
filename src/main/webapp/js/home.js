$( document ).ready(function() {

	$("#clickadd").click( function(){
		$.ajax({
		    url: location.origin + "/slambook/add.html",
		    success: function(){
		    	
		    	window.location = location.origin + "/slambook";
		    }
		});
		
});
});