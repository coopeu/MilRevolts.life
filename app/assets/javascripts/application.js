// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require semantic
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require activestorage
//= require trix
//= require_tree .
//= require_self


$ ->
  $(".message.closable .close.icon").on "click", ->
    $('.message.closable').fadeOut("slow")
    false




/* First Slider */
	$('#single-slider').owlCarousel({
	    loop:true,
	    margin:10,
	    nav:false,
	    autoplay: true,
      smartSpeed: 4000,
	    responsive:{
	        0:{
	            items:2
	        },
	        600:{
	            items:4
	        },
	        1000:{
	            items:6
	        }
	    }
	});
	$('#multiple-slider').owlCarousel({
	    loop:true,
	    margin:10,
	    nav:false,
 	    autoplay: 2000,
      smartSpeed: 200,
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:3
	        },
	        1000:{
	            items:4
	        }
	    }
	});
	
});