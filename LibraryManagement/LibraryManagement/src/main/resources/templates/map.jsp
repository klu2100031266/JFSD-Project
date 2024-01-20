<!DOCTYPE html> 
<html> 
  <style>
    .maps
    {
     
      background-image: url("maps.jpg");
      height:100vh;
      width:100vw;
      background-size: cover;
    }
  </style>
<body> 
  <div class="maps">
<h1> Geolocation</h1> 
<p>Click the button to get your coordinates.</p> 
 
<button onclick="getLocation()">Try It</button> 
 
<p id="demo"></p> 
 
<script> 
const x = document.getElementById("demo"); 
 
function getLocation() { 
  if (navigator.geolocation) { 
    navigator.geolocation.getCurrentPosition(showPosition); 
  } else {  
    x.innerHTML = "Geolocation is not supported by this browser."; 
  } 
} 
 
function showPosition(position) { 
  x.innerHTML = "Latitude: " + position.coords.latitude +  
  "<br>Longitude: " + position.coords.longitude; 
} 
</script> 
</div>
</body> 
</html>