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
//= require rails-ujs
//= require turbolinks
//= require_tree .
$(document).on('turbolinks:load', function() {
  $(window).scroll(function(){
    console.log("scrolled");
    var y = $(this).scrollTop();
    $('header').css('background-position', '0 ' + parseInt( y / 3 ) + 'px');
    $('.header-title').css('top', parseInt(  y / 4 ) + 'px');
    $('.background').css('background-position', '0 ' + parseInt( y / 3 - 200) + 'px');
    $('footer').css('background-position', '0 ' + parseInt( y / 3 ) + 'px');
  });
});
