$(document).ready(function(){

  function initialize() {
    var mapOptions = {
      center: { lat: 39.7392, lng: -104.9903},
      zoom: 15
    };
    var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
  }
  google.maps.event.addDomListener(window, 'load', initialize);
  
)}; 