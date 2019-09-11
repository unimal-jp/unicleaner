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
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require activestorage
//= require turbolinks
//= require moment
//= require fullcalendar
//= require_tree .

document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.day').forEach(function(element) {
    // element.onclick = function(e) {
    //   let date = e.target;
    //   console.log(date);
    // }
    element.addEventListener('click', function(e) {
      // console.log('click');
      var eHTML = e.target.innerHTML;
      // eHTML = Date.parse(eHTML)
      var year = parseInt(eHTML.slice(4, 8), 10);
      var month = parseInt(eHTML.slice(9, 11), 10);
      var day = parseInt(eHTML.slice(12, 14), 10);
      // var month = eHTML.slice(9, 11);
      // var day = eHTML.slice(12, 14);
      console.log(year);
      console.log(month);
      console.log(day);
    });
  });
});
