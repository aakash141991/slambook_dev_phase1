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