var plotMarkers = function() {
  if (window.Matches == undefined) {
    return;
  }

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (position) {
      var currentPosition = new google.maps.LatLng(
        position.coords.latitude,
        position.coords.longitude
      );

      var map = new google.maps.Map(document.getElementById('map'), {
        center: currentPosition,
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });

      for (var i = 0; i < window.Matches.length; i++) {
        var place = window.Matches[i];
        var position = new google.maps.LatLng(place.latitude, place.longitude);

        var marker = new google.maps.Marker({
            position: position,
            map: map,
            draggable: false
        });
      };
    });
  }
};

$(document).ready(plotMarkers)
