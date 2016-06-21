/*
 * Spread Personal Blog theme
 *
 * Copyright (c) 2013 F²
 * 
 * Main Javascript
 */
(function($) {
    "use strict";
    //DETECT MOBILE DEVICES TO FIX BACKGROUND COVER ISSUE
    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
	    $("body").addClass("mobile");
	}
    //LOADER
    $(window).load(function () {
		$('#loader').fadeOut();
	});
	//BOOTSTRAP ALERTS FOR FORM
	$(".alert").alert();
    //RESPONSIVE MENU
    $('#navigation nav').meanmenu({
	    meanScreenWidth: "998",
	    onePage: "true",
	    meanMenuContainer:"#navigation .container"
    });
    //PROJECT SLIDER
	var windowsize = $(window).height();
	$('#home').css({'height': windowsize + 'px'});
    $(window).load(function() {
	    var options = {
        autoPlay: true,
        nextButton: true,
        prevButton: true,
        pagination: true,
        preloader: true
	    };
	    var sequence = $("#home").sequence(options).data("sequence");
	    $(".sequence-prev, .sequence-next").fadeIn(500);
	});
    //FIXED HEADER
    $("#navigation").sticky({topSpacing:0});
    $(window).scroll(function () {
    	$("#navigation").sticky('update');
    });
    //CAROUSEL
    $(window).load(function() {
	  $('.flexslider.services-slider').flexslider({
	    animation: "slide",
	    animationLoop: false,
	    itemWidth: 254,
	    slideshow: false
	  });
	  $('.flexslider.posts-slider, .flexslider.events-slider').flexslider({
	    animation: "slide",
	    animationLoop: false,
	    itemWidth: 340,
	    slideshow: false
	  });
	});
	//LINKS
	$('html').smoothScroll(500);
	//SHARE BUTTON
	$(".sharing").click(function(){
		$(this).next(".hidden-buttons").fadeToggle();
	});
	//SCROLL TOP
	$.scrollUp({
	    scrollText: 'Top', // Text for element
	});
	//FANCYOX
	$('.fancybox').fancybox({
        openEffect  : 'elastic'
    });
	//GALLERY
    $(window).load(function() {
	  $('#gallery-slider').flexslider({
	    animation: "slide",
	    animationLoop: false,
	    itemWidth: 300,
	    itemMargin: 0
	  });
	});
})(jQuery);

/* Main page isotope */
function isotope() {
	var container = $('#portfolio-one');
	var item = $('#portfolio-one .element');
	var columns;
	var width;
	columns = Math.ceil(container.width()/300);  // Number of columns
	width = Math.floor(container.width()/columns); // Width for each item
	item.each(function(){
		$(this).css('width',width+'px'); // Setting width
	});
	container.imagesLoaded( function(){
		container.isotope({    // Isotope
			resizable: false,
			masonry: {
				columnWidth: width
			}
		});
	});
}

$(document).ready(function(){
	isotope(); // Initilize isotope 
	$(window).smartresize(function(){
		isotope(); // Call isotope when resize
	});
});
