// // This is a manifest file that'll be compiled into application.js, which will include all the files
// // listed below.
// //
// // Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// // vendor/assets/javascripts directory can be referenced here using a relative path.
// //
// // It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// // compiled file. JavaScript code in this file should be added after the last require_* statement.
// //
// // Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// // about supported directives.
// //
// //= require rails-ujs
// //= require jquery3
// //= require popper
// //= require bootstrap-sprockets
// //= require activestorage
// //= require turbolinks
// //= require_tree .
//
document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.date').forEach(function(element) {
    element.addEventListener('click', function(e) {
      console.log(e.target);
      const formId = e.target.dataset.formId;
      const form = document.getElementById(formId);
      console.log(form);
      const value = form.querySelector('#schedule_user_id').value;
      console.log(value);
      if (value == '') {
        alert('担当者を選んでください');
        return;
      }
      form.querySelector('.scheduled-date').value = e.target.dataset.date;
      console.log(e.target.dataset.date);
      form.submit();
    });
  });
  document.querySelectorAll('.select-box').forEach(function(element) {
    element.addEventListener('change', function(e) {
      e.target.parentNode.parentNode.submit();
    });
  });
  document.querySelectorAll('.radio-box').forEach(function(element) {
    element.addEventListener('change', function(e) {
      const id = e.target.parentNode.parentNode.dataset.formId;
      const formForRadio = document.getElementById(id);
      const valueForRadio = formForRadio.querySelector('.scheduled-date').value;
      if (!valueForRadio) {
        alert('作業日を選んでください');
        return;
      }
      e.target.parentNode.submit();
    });
  });
});
