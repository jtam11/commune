// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

$( document ).ready( function(){
  // selector for datepicker in new/edit talk
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });

  // selector for hamburger button in navbar
  $('.button-collapse').sideNav();

  // selector for search toggle
  $('a#toggle-search').on('click', function() {
    var search = $('div#search');

    search.is(":visible") ? search.slideUp() : search.slideDown( function() {
      search.find('input').focus();
    });
  });

});
