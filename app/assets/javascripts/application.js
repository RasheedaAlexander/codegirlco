// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require social-share-button
//= require_tree .

$(document).ready(function(){
  console.log("Blog is working");
  // var col = $('.col-md-4');
  $('.col-md-4:even').addClass('outer');
  $('.col-md-4:odd').addClass('inner');


  $(window).scroll(function() {
    if ($(document).scrollTop() > 50) {
      $('navbar').addClass('shrink');
    } else {
      $('navbar').removeClass('shrink');
    }
  });

  // Display 5 recent posts
});
