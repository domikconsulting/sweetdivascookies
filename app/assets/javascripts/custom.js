$(function() {
    var hashTagActive = "";
    $("a").click(function() {
        if(hashTagActive != this.hash) { //this will prevent if the user click several times the same link to freeze the scroll.
            //calculate destination place
            var dest = 0;
            if ($(this.hash).offset().top > $(document).height() - $(window).height()) {
                dest = $(document).height() - $(window).height() - 250;
            } else {
                dest = $(this.hash).offset().top - 250;
            }
            //go to destination
            $('html,body').animate({
                scrollTop: dest
            }, 1000, 'easeOutElastic');
            hashTagActive = this.hash;
        }
    });
});

new WOW().init();


/* activate the carousel */
$('#modalCarousel').carousel({interval:false});


// When the DOM is ready, run this function
$(document).ready(function() {
  //Set the carousel options
  $('#quote-carousel').carousel({
    pause: true,
    interval: 60000,
  });
});