window.onload = function() {

var map;
  var infowindow;

    function initialize(lat, lng) {
      var lat_long = new google.maps.LatLng(lat, lng);

        map = new google.maps.Map(document.getElementById('map-canvas'), {
        center: lat_long,
        zoom: 12
      });

        var request = {
          location: lat_long,
          radius: 2000,
          types: ['gym']
      };

        infowindow = new google.maps.InfoWindow();
        var service = new google.maps.places.PlacesService(map);
        service.nearbySearch(request, callback);
      }

    function callback(results, status) {
    if (status == google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

function createMarker(place) {
    var placeLoc = place.geometry.location;
      var marker = new google.maps.Marker({
        map: map,
        position: place.geometry.location,
      });

       google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(place.name);
        infowindow.open(map, this);
      });

          google.maps.event.addDomListener(window, 'resize', function() { map.setCenter(place.geometry.location); });}

        document.getElementById('button').addEventListener('click', function(e) {
        e.preventDefault();
          var xhr = new XMLHttpRequest();
          var zip_search = document.getElementById('locationinput').value;
          xhr.open('GET', 'https://maps.googleapis.com/maps/api/geocode/json?address='+zip_search+'&key=AIzaSyDvh63FDSrWR7ONSxbc_2USKDBeuVujaC4', true);

          xhr.addEventListener('load', function() {

       var response = JSON.parse(xhr.response)
          var lat = response.results[0].geometry.location.lat
          var lng = response.results[0].geometry.location.lng
          initialize(lat, lng);
        });
      xhr.send();
    });
  }
