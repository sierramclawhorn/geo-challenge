function initMap() {
  var addresses = document.getElementsByClassName('address');
  var geocoder = new google.maps.Geocoder();
  var myLatLng = {lat: 37.7949, lng: -122.3700};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 12,
    center: myLatLng
  })

  // iterate over the HTMLCollection of both addresses
  for (var i = 0; i < addresses.length; i++) {
    var address = addresses[i].innerText;
    // marker for each address
    geocoder.geocode( {address: address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        map.setCenter(results[0].geometry.location); //center the map over the result
        // clickable window info
        var infowindow = new google.maps.InfoWindow({
          content: address
        });
        //place a marker at the location
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
        });
        marker.addListener('click', function() {
          infowindow.open(map, marker);
        });
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
     }
    });
  }
}