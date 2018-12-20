<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css">

<title>Advi</title>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin="">
 <!-- Make sure you put this AFTER Leaflet's CSS -->
 <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js" integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA==" crossorigin=""></script>
    <script src="jquery-2.1.1.min.js"></script> 
</head>
<div id="Main">
<center><h1>Main Page</h1></center>



<table class="darkTable">
<tbody>
<tr>
<td><button type="submit" class="login-css">Show</button></td>
<td><button type="button" onclick="location.href=" #add"="" class="login-css">Add</button></td>
</tr>
<tr>
<td><table class="darkTable">
<tbody>
<tr>
<td>Ingerl</td>
</tr>
<tr>
<td>Max</td>
</tr>
<tr>
<td>Klaus</td>
</tr>
<tr>
<td>Kinski</td>
</tr>
<tr>
<td>Ick3</td>
</tr>
<tr>
<td>Rulez</td>
</tr>
<tr>
<td>HTML</td>
</tr>
<tr>
<td>CSS</td>
</tr>
</tbody>
</table></td>
<td>
<div id="map" class="leaflet-container leaflet-touch leaflet-fade-anim leaflet-grab leaflet-touch-drag leaflet-touch-zoom" tabindex="0" style="position: relative;">
  <script>

  // initialize the map
  var map = L.map('map').setView([42.35, -71.08], 13);

  // load a tile layer
  L.tileLayer('http://tiles.mapc.org/basemap/{z}/{x}/{y}.png',
    {
      attribution: 'Tiles by <a href="http://mapc.org">MAPC</a>, Data by <a href="http://mass.gov/mgis">MassGIS</a>',
      maxZoom: 17,
      minZoom: 9
    }).addTo(map);

  // load GeoJSON from an external file
  $.getJSON("rodents.geojson",function(data){
    // add GeoJSON layer to the map once the file is loaded
    L.geoJson(data).addTo(map);
  });
 
  </script><div class="leaflet-pane leaflet-map-pane" style="transform: translate3d(0px, 0px, 0px);"><div class="leaflet-pane leaflet-tile-pane"><div class="leaflet-layer " style="z-index: 1; opacity: 1;"><div class="leaflet-tile-container leaflet-zoom-animated" style="z-index: 15; transform: translate3d(57px, 268px, 0px) scale(0.25);"></div><div class="leaflet-tile-container leaflet-zoom-animated" style="z-index: 16; transform: translate3d(57px, 268px, 0px) scale(0.5);"></div><div class="leaflet-tile-container leaflet-zoom-animated" style="z-index: 17; transform: translate3d(38px, 179px, 0px) scale(1);"><img alt="" role="presentation" src="http://tiles.mapc.org/basemap/11/619/756.png" class="leaflet-tile leaflet-tile-loaded" style="width: 256px; height: 256px; transform: translate3d(-74px, -262px, 0px); opacity: 1;"><img alt="" role="presentation" src="http://tiles.mapc.org/basemap/11/620/756.png" class="leaflet-tile leaflet-tile-loaded" style="width: 256px; height: 256px; transform: translate3d(182px, -262px, 0px); opacity: 1;"><img alt="" role="presentation" src="http://tiles.mapc.org/basemap/11/619/757.png" class="leaflet-tile leaflet-tile-loaded" style="width: 256px; height: 256px; transform: translate3d(-74px, -6px, 0px); opacity: 1;"><img alt="" role="presentation" src="http://tiles.mapc.org/basemap/11/620/757.png" class="leaflet-tile leaflet-tile-loaded" style="width: 256px; height: 256px; transform: translate3d(182px, -6px, 0px); opacity: 1;"><img alt="" role="presentation" src="http://tiles.mapc.org/basemap/11/621/756.png" class="leaflet-tile leaflet-tile-loaded" style="width: 256px; height: 256px; transform: translate3d(438px, -262px, 0px); opacity: 1;"><img alt="" role="presentation" src="http://tiles.mapc.org/basemap/11/621/757.png" class="leaflet-tile leaflet-tile-loaded" style="width: 256px; height: 256px; transform: translate3d(438px, -6px, 0px); opacity: 1;"></div></div></div><div class="leaflet-pane leaflet-shadow-pane"></div><div class="leaflet-pane leaflet-overlay-pane"></div><div class="leaflet-pane leaflet-marker-pane"></div><div class="leaflet-pane leaflet-tooltip-pane"></div><div class="leaflet-pane leaflet-popup-pane"></div><div class="leaflet-proxy leaflet-zoom-animated" style="transform: translate3d(158777px, 193819px, 0px) scale(1024);"></div></div><div class="leaflet-control-container"><div class="leaflet-top leaflet-left"><div class="leaflet-control-zoom leaflet-bar leaflet-control"><a class="leaflet-control-zoom-in" href="#" title="Zoom in" role="button" aria-label="Zoom in">+</a><a class="leaflet-control-zoom-out" href="#" title="Zoom out" role="button" aria-label="Zoom out">−</a></div></div><div class="leaflet-top leaflet-right"></div><div class="leaflet-bottom leaflet-left"></div><div class="leaflet-bottom leaflet-right"><div class="leaflet-control-attribution leaflet-control"><a href="http://leafletjs.com" title="A JS library for interactive maps">Leaflet</a> | Tiles by <a href="http://mapc.org">MAPC</a>, Data by <a href="http://mass.gov/mgis">MassGIS</a></div></div></div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<div id="Update_Delete">
<center><h1>Update Window</h1></center>
<table class="darkTable">
<tbody>
<tr>
<td><label for="name"><b>Name:</b></label></td>
<td><input type="text" placeholder="Enter Name" name="Name" required=""></td>
</tr>
<tr>
<td><label for="Straße"><b>Straße:</b></label></td>
<td><input type="text" placeholder="Enter Street" name="Street" required=""></td>
</tr>
<tr>
<td><label for="PLZ"><b>PLZ:</b></label></td>
<td><input type="text" placeholder="Enter PLZ" name="PLZ" required=""></td>
</tr>
<tr>
<td><label for="Stadt"><b>Stadt:</b></label></td>
<td><input type="text" placeholder="Enter City" name="city" required=""></td>
</tr>
<tr>
<td><label for="name"><b>Land:</b></label></td>
<td><input type="text" placeholder="Enter Country" name="country" required=""></td>
</tr>
<tr>
<td><label for="name"><b>Privat:</b></label></td>
<td><input type="checkbox" placeholder="Enter Private" name="privateflag" required=""></td>
</tr>
<tr>
<td><button type="submit" class="login-css">Update</button></td>
<td><button type="submit" class="login-css">Delete</button></td>
</tr>
</tbody>
</table>


</div>
<footer>
<center>
  <p>Thomas Diewald</p>
  <p>Webentwicklung</p>
  </center>
</footer>