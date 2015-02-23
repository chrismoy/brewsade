// var plotMarkers = function() {
//   if (window.Matches == undefined) {
//     return;
//   }

//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function (position) {
//       var currentPosition = new google.maps.LatLng(
//         position.coords.latitude,
//         position.coords.longitude
//       );

//       var map_id = document.getElementById('map');
//       var map_options = {
//         center: currentPosition,
//         zoom: 15,
//         mapTypeId: google.maps.MapTypeId.ROADMAP
//       }

//       var map = new google.maps.Map(map_id, map_options);

//       for (var i = 0; i < window.Matches.length; i++) {
//         var place = window.Matches[i];
//         var position = new google.maps.LatLng(place.latitude, place.longitude);

//         var marker = new google.maps.Marker({
//             position: position,
//             map: map,
//             draggable: false
//         });
//       };
//     });
//   }
// };

// $(document).ready(plotMarkers)

function initialize() {
  if (window.Matches == undefined) {
    return;
  }

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (position) {
      var currentPosition = new google.maps.LatLng(
        position.coords.latitude,
        position.coords.longitude
      );

      var map_id = document.getElementById('map');
      var map_options = {
        center: currentPosition,
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      }

      map = new google.maps.Map(map_id, map_options);

      for (var i = 0; i < window.Matches.length; i++) {
        var place = window.Matches[i];
        var position = new google.maps.LatLng(place.latitude, place.longitude);

        addMarker(position, map);
      };
    });
  }
};

function addMarker(position, map) {
  var marker = new google.maps.Marker({
      position: position,
      map: map,
      draggable: false
  });
};

$(document).ready(initialize);




























