// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .


//Intento de agregar AJAX a un formulario
$(function() {
  $("#paciente_personas th a, #paciente_personas .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#paciente_personas_search input").keyup(function() {
    $.get($("#paciente_personas_search").attr("action"), $("#paciente_personas_search").serialize(), null, "script");
    return false;
  });
});