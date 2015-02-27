$(document).ready(function() {

  $('#tip-btn').click(function() {
    $('#tip-box').slideToggle(400);
  });

  $('#close-tip-btn').click(function() {
    $('#tip-box').slideToggle(400);
  });

  $('#new-beers-btn').click(function() {
    $('.shade').show(400);
  });

  $('#back-btn').click(function() {
    $('.shade').hide(400);
  });

  $("input:checkbox:not(:checked)").each(function() {
    var column = "table ." + $(this).attr("name");
    $(column).hide();
  });

  $("input:checkbox").click(function(){
    var column = "table ." + $(this).attr("name");
    $(column).toggle();
  });

});

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(addPositionsToForm);
  }
}

function addPositionsToForm(position) {
  $latitudeField.val(position.coords.latitude);
  $longitudeField.val(position.coords.longitude);
}
