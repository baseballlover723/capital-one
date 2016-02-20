# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(->
  $("#get-started").click ->
    console.log "Stuff"
    target = $(".title_screen");
    $('body').animate
      scrollTop: target.prop "scrollHeight"
    , 1000;
)