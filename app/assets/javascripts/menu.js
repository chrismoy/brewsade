$(document).ready(function() {

  $('#tip-btn').click(function() {
    $('#tip-box').slideToggle("slow");
    $('#tip-close-button').toggle();
  });

  $('#all-beers-btn').click(function() {
    $('.shade').show(400);
  });

  $('#back-btn').click(function() {
    $('.shade').hide(400);
  });

});