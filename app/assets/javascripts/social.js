
(function ($) {
	
	$(window).scroll(function() {    
	    if ($(".navbar").offset().top >= 500) {
	        $("#socialbar").removeClass("slideOutLeft");
	        $("#socialbar").removeClass("hidden"); 
	        $("#socialbar").addClass("slideInLeft");
	    }
	    else {
	        $("#socialbar").removeClass("slideInLeft");
	        $("#socialbar").addClass("slideOutLeft");
	    }
	});

})(jQuery);