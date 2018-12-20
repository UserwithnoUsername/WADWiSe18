<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css">

<title>Advi</title>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin="">
 <!-- Make sure you put this AFTER Leaflet's CSS -->
 <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js" integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA==" crossorigin=""></script>
    <script src="jquery-2.1.1.min.js"></script> 
</head>
<div id="Add">
<center><h1>Add Contact</h1></center>
<table class="darkTable">
<tbody>
<tr>
<td><label for="name"><b>Name:</b></label></td>
<td><input type="text" placeholder="Enter Name" name="Name" required=""></td>
</tr>
<tr>
<td><label for="Straﬂe"><b>Straﬂe:</b></label></td>
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
<td colspan="2"><button type="submit" class="login-css">Add</button></td>

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