
(function ($) {
	
	$(window).scroll(function() {    
	    if ($(".navbar").offset().top >= 500) {
	        $("#socialbar").removeClass("slideOutLeft");
	        $("#socialbar").removeClass("hidden"); 
	        $("#socialbar").addClass("slideInLeft");
	        $("#footer").removeClass("fadeOut");
	        $("#footer").removeClass("hidden"); 
	        $("#footer").addClass("fadeIn");
	    }
	    else {
	        $("#socialbar").removeClass("slideInLeft");
	        $("#socialbar").addClass("slideOutLeft");
	        $("#footer").removeClass("fadeIn");
	        $("#footer").addClass("fadeOut");
	    }
	});

})(jQuery);