function initMap() {
  var myLatLng = {lat: 37.7949, lng: -122.3700};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8,
    center: myLatLng
  });
  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map
  });
}