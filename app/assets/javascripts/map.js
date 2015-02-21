// function initialize() {
//   var mapOptions = {
//     center: { lat: -34.397, lng: 150.644 },
//     zoom: 10,
//   };
//   var map = new google.maps.Map(document.getElementById('map'),
//       mapOptions);

//   var marker = new google.maps.Marker({
//     position: { lat: -34.555, lng: 150.777 },
//     map: map,
//     title:"Hello World!"
//   });

//   var marker2 = new google.maps.Marker({
//     position: { lat: -34.888, lng: 150.555 },
//     map: map,
//     title:"Hello World!"
//   });
// }

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
