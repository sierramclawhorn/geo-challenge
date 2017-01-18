function initMap() {
  var givenAddress = document.getElementById('address').innerText;
  var storeAddress = document.getElementById('store').innerText;
  var geocoder = new google.maps.Geocoder();
  var myLatLng = {lat: 37.7949, lng: -122.3700};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8,
    center: myLatLng
  });

  // marker for given address
  geocoder.geocode( {address:givenAddress}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);//center the map over the result
      //place a marker at the location
      var marker = new google.maps.Marker(
      {
          map: map,
          position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
   }
  });

  // marker for closest store
  geocoder.geocode( {address:storeAddress}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);//center the map over the result
      //place a marker at the location
      var marker = new google.maps.Marker(
      {
          map: map,
          position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
   }
  });
}