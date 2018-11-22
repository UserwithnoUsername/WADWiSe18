<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Advi</title>
</head>
<body>

<div id="login">
<h1>Login Page</h1>

  <!--action ist ‚Äú/Webapp-Name/url-pattern‚Äù -->

	<table class="darkTable">
<tbody>
<tr>
<td><label for="username"><b>Username:</b></label></td>
<td><input type="text" placeholder="Enter Username" name="username" required>†</td>
</tr>
<tr>
<td><label for="password"><b>Password:</b></label> </td>
<td><input type="password" placeholder="Enter Password" name="password" required></td>
</tr>
<tr>
<form action="/advi/login" method="POST"> 
<td colspan="2"><button type="submit" class="login-css">Login</button></td>
</form>
</tr>
</tbody>
</table>
	
	
	

</div>
<div id="Main" >
<h1>Main Page</h1>



<table class="darkTable">
<tbody>
<tr>
<td><button type="submit" class="login-css">Show</b></label></td>
<td><button type="submit" class="login-css">Add</b></label></td>
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
<td><div id="map"></div>

    <script>
// Initialize and add the map
function initMap() {
  // The location of Uluru
  var uluru = {lat: 52.520008, lng: 	13.404954};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 4, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}
    </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCj07mlNFnDstPYnQfEG25BbxTr7iFmYa4&callback=initMap"
    async defer></script>



</td>
</tr>
</tbody>
</table>
</div>
<div id="Add">
<h1>Add Window</h1>
<table class="darkTable">
<tbody>
<tr>
<td><label for="name"><b>Name:</b></label></td>
<td><input type="text" placeholder="Enter Name" name="Name" required></td>
</tr>
<tr>
<td><label for="Straﬂe"><b>Straﬂe:</b></label></td>
<td><input type="text" placeholder="Enter Street" name="Street" required></td>
</tr>
<tr>
<td><label for="PLZ"><b>PLZ:</b></label></td>
<td><input type="text" placeholder="Enter PLZ" name="PLZ" required></td>
</tr>
<tr>
<td><label for="Stadt"><b>Stadt:</b></label></td>
<td><input type="text" placeholder="Enter City" name="city" required></td>
</tr>
<tr>
<td><label for="name"><b>Land:</b></label></td>
<td><input type="text" placeholder="Enter Country" name="country" required></td>
</tr>
<tr>
<td><label for="name"><b>Privat:</b></label></td>
<td><input type="checkbox" placeholder="Enter Private" name="privateflag" required></td>
</tr>
<tr>
<td colspan="2"><button type="submit" class="login-css">Add</button></td>

</tr>
</tbody>
</table>


</div>
<div id="Update Delete">
<h1>Add Window</h1>
<table class="darkTable">
<tbody>
<tr>
<td><label for="name"><b>Name:</b></label></td>
<td><input type="text" placeholder="Enter Name" name="Name" required></td>
</tr>
<tr>
<td><label for="Straﬂe"><b>Straﬂe:</b></label></td>
<td><input type="text" placeholder="Enter Street" name="Street" required></td>
</tr>
<tr>
<td><label for="PLZ"><b>PLZ:</b></label></td>
<td><input type="text" placeholder="Enter PLZ" name="PLZ" required></td>
</tr>
<tr>
<td><label for="Stadt"><b>Stadt:</b></label></td>
<td><input type="text" placeholder="Enter City" name="city" required></td>
</tr>
<tr>
<td><label for="name"><b>Land:</b></label></td>
<td><input type="text" placeholder="Enter Country" name="country" required></td>
</tr>
<tr>
<td><label for="name"><b>Privat:</b></label></td>
<td><input type="checkbox" placeholder="Enter Private" name="privateflag" required></td>
</tr>
<tr>
<td><button type="submit" class="login-css">Update</button></td>
<td><button type="submit" class="login-css">Delete</button></td>
</tr>
</tbody>
</table>


</div>

</body>
