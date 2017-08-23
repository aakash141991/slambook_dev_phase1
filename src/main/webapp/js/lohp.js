
	window.onload = function(e){ 
		
		//
		var viewportWidth = $(window).width();
		console.log("Widtgh"+ viewportWidth);
		if (viewportWidth < 981) {
            $(".left-lohp").removeClass("col-md-6 col-xs-6 ");
            $(".right-lohp").removeClass("col-md-6 col-xs-6 ");
            $(".right-lohp").addClass("col-md-12 col-xs-12 text-center ");
         }
		//
		var slideIndex = 1;
		showDivs(slideIndex);
		function plusDivs(n) {
		    showDivs(slideIndex += n);
		}
		function autoPlay(n) {
		    showDivs(slideIndex += n);
		}
		function showDivs(n) {
		    var i;
		    var x = document.getElementsByClassName("mySlides");
		    if (n > x.length) {slideIndex = 1} 
		    if (n < 1) {slideIndex = x.length} ;
		    for (i = 0; i < x.length; i++) {
		        x[i].style.display = "none"; 
		    }
		    x[slideIndex-1].style.display = "block"; 
		}
		$( ".carousel-left" ).click(function() {
			plusDivs(-1);
	
			});
		$( ".carousel-right" ).click(function() {
			plusDivs(1);
			});
		
	  setInterval(function(){autoPlay(1);},5000);
	}
	
	
/*	$(window).load(function() {
	    
	    var viewportWidth = $(window).width();
	    if (viewportWidth < 600) {
	            $(".view").removeClass("view view-portfolio").addClass("gallery-mobile");
	    }
	    
	    $(window).resize(function () {
	    
	        if (viewportWidth < 600) {
	            $(".view").removeClass("view view-portfolio").addClass("gallery-mobile");
	        }
	    });
	});*/
	