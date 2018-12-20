<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />

<title>Advi</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.js"></script>
   
        <script language="JavaScript" type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/jquery.validationEngine-2.6.2.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/jquery.validationEngine-en.js"></script>
    <link href="css/validationEngine.jquery.css" rel="stylesheet" media="screen">
    <script language="JavaScript" type="text/javascript" src="js/jquery.dataTables-1.10.0.min.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/all.js"></script>
    <script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-map.js?key=QGr9tHiGzjefS2SRk5aIlBGYcAGcWaML"></script>
<script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-geocoding.js?key=QGr9tHiGzjefS2SRk5aIlBGYcAGcWaML"></script>
    
    <link href="css/jquery.dataTables.min.css" rel="stylesheet" media="screen">
<nav id='cssmenu'>	
	<ul id="navigation">
		<li ><a href="#login">Login</a></li>
		<li><a href="#main">Main</a></li>	
	</ul>
</nav>
</head>
<body>


<div id="login">
<h1>Login</h1>



	<table class="darkTable">
<tbody>
<tr>
<td><label for="username"><b>Username:</b></label></td>
<td><input type="text" placeholder="Enter Username" name="username" required> </td>
</tr>
<tr>
<td><label for="password"><b>Password:</b></label> </td>
<td><input type="password" placeholder="Enter Password" name="password" required></td>
</tr>
<tr>
<!--<form action="/advi/login" method="POST"> 
<td colspan="2"><button type="submit" class="login-css">Login</button></td>
</form>-->


    <td colspan="2"><button type="submit" class="login-css" id="logedin">Login</button></td>





</tr>
</tbody>
</table>
	
	
	

</div>
<div id="Main" >
<h1>Main Page</h1>



<table class="darkTable">
<tbody>
<tr>
<td><button type="submit" class="login-css" id="show">Show</b></label></td>
<td><button type="submit" class="login-css" id="add">Add</b></label></td>
</tr>


<tr>
<td colspan="2">
<div class="container">
    	
    	<div id="list">
    		<table id="table" class="display"></table>
    		<div class="form-group">
    		</div>
	    </div>
    	<form class="form-horizontal" role="form" id="formID">
    		<div class="form-group">
    			<label for="seq" class="col-sm-2 control-label">Sequence</label>
    			<div class="col-sm-6">
    				<p class="form-control-static" id="seq"></p>
    			</div>
    		</div>
    		<div class="form-group">
    			<label for="Name" class="col-sm-2 control-label">Name:</label>
    			<div class="col-sm-6">
    				<input type="text"  id="Name" placeholder="Name">
          		</div>
          	</div>
          	    		<div class="form-group">
    			<label for="Street" class="col-sm-2 control-label">Street:</label>
    			<div class="col-sm-6">
    				<input type="text"  id="Street" placeholder="Street">
          		</div>
          	</div>
          	    		<div class="form-group">
    			<label for="PLZ" class="col-sm-2 control-label">PLZ</label>
    			<div class="col-sm-6">
    				<input type="text"  id="PLZ" placeholder="PLZ">
          		</div>
          	</div>
          	    		<div class="form-group">
    			<label for="City" class="col-sm-2 control-label">Stadt</label>
    			<div class="col-sm-6">
    				<input type="text"  id="City" placeholder="City">
          		</div>
          	</div>
          	    		<div class="form-group">
    			<label for="Country" class="col-sm-2 control-label">Land</label>
    			<div class="col-sm-6">
    				<input type="text"  id="Country" placeholder="Country">
          		</div>
          	</div>
          	    		<div class="form-group">
    			<label for="Privat" class="col-sm-2 control-label">Privat</label>
    			<div class="col-sm-6">
    				<input type="checkbox"  id="Privat" >
          		</div>
          	</div>
						<div class="col-sm-offset-2 col-sm-8">
    				<button class="btn btn-default" id="cancel">Cancel</button>
    				<button type="submit" class="submit btn btn-primary" id="save">Save</button>
    			</div>
    	</form>
	</div>
<td>
</tr>
<tr>
<td colspan="2">
<div id="map">
<script>
window.onload = function() {

    var map = L.map('map', {
        layers: MQ.mapLayer()
    });

    MQ.geocode({ map: map })
        .search('lancaster pa');
}
</script>
</div>
</td>
</tr>

</tbody>
</table>
</div>
 


<script>
var Citys=[];
var Streets=[];
var Countrys=[];
	var editor; 
	var formId="sample";
	var oTable;
	$(document).ready(function(){
		$('#Main').hide();
		$('#formID').hide();
		var seq=createTable();
		$('#seq').text(seq);
		$("#formID").validationEngine('attach',
		{
			onValidationComplete: function(form, status){
				if (!verifyLocalStorageCapability) {
					alert("Local Storage is not supported.");
					return;
				}
				if (status) {
					save();
					location.reload(true);
				}
			}
		});
	});

	function createTable() {
		var dataSet=[];
		var skip=0;
		var seq=0;
		var index=0;

		var icons  ='<span class="glyphicon glyphicon-edit">Change</span><span class="glyphicon glyphicon-remove"> Delete</span>';

		while ( skip<2 ) {
			var key=formId+"_"+index;
			var json=localStorage.getItem(key);
			if ( json==null || json=="null" || json=="[object Object]" ) {
				index=index+1;
				skip=skip+1;
				continue;
			}
			var object=null;
			object=JSON.parse(json);
			dataSet[seq]=[index, icons, object.Name, object.Street, object.PLZ, object.City, object.Country, object.Privat];
			index=index+1;
			seq=seq+1;
			console.log(object.City);Citys.push(object.City);
			Streets.push(object.Street);
			Countrys.push(object.Countrys);

		}

		oTable=$('#table').dataTable({
			"data": dataSet,
			"columns": [
			{ "title": "Seq", "class": "center" },
			{ "title": "", "class": "center" },
			{ "title": "Name" },
			{ "title": "Street" },
			{ "title": "PLZ", "class": "center" },
			{ "title": "City", "class": "center" },
			{ "title": "Country" },
			{ "title": "Privat" }
			]
		});

		$('#table tbody').on( 'click', '.glyphicon-remove', function () {
		    var row = $(this).parents('tr');
		    var seq = row.children()[0].innerHTML;
		    if(window.confirm('Are you sure to delete? Seq='+seq)){
		    	var key=formId+"_"+seq;
		    	localStorage.removeItem(key);
		    	restoreItems();
        		location.reload(true);
		    }
		} );

		$('#add').on( 'click', function () {
		    $('#list').hide();
		    $('#seq').text(seq);
		    $('#formID').show();
		} );
		$('#logedin').on( 'click', function () {
		    $('#login').hide();
		    
		    $('#Main').show();
		} );
		
		$('#cancel').on( 'click', function () {
		    location.reload(true);
		} );

		$('#table tbody').on( 'click', '.glyphicon-edit', function () {
		    $('#list').hide();
		    var rows = $(this).parents('tr').children();
		    $('#Name').text(rows[0].innerHTML);
		    $('#Street').val(rows[2].innerHTML);
		    $('#PLZ').val(rows[4].innerHTML);
		    $('#City').val(rows[5].innerHTML);
		    $('#Country').val([rows[6].innerHTML]);
		    $('#Privat').val((rows[7].innerHTML).replace(/(<br>)/g, "\n"));
		    $('#formID').show();
		} );

		return seq;
	}

	function save() {
		var seq=$('#seq').text();
		if ( isNaN(seq) ) { seq=0; }
		var key=formId+"_"+seq;
		var object={
			"Name":$("#Name").val(),
			"Street":$("#Street").val(),
			"PLZ": $("#PLZ").val(),
			"City": $("#City").val(),
			"Country":$("#Country").val(),
			"Privat": $("#Privat").val()
		}
		localStorage.setItem(key, JSON.stringify(object));
		alert("Saved!")
	}

	function restoreItems() {
		var skip=0;
		var index=1;
		var previous=JSON.parse(localStorage.getItem(formId+"_0"));
		var prevIndex=0;
		while ( skip<2 ) {
			var key=formId+"_"+index;
			var object=JSON.parse(localStorage.getItem(key));
			if ( previous==null && object==null ) {
				skip=skip+1;
				prevIndex=index;
				index=index+1;
				continue;
			}
			if ( previous==null && object!=null ) {
				localStorage.setItem(formId+"_"+prevIndex, JSON.stringify(object));
				localStorage.setItem(key, null);
				prevIndex=index;
				index=index+1;
				continue;
			}
			previous=object;
			prevIndex=index;
			index=index+1;
		}
	};


	function verifyLocalStorageCapability() {
		if (!window.localStorage) {
	    	return false;
		}
		return true;
	}
</script>



</body>
<footer>
<center>
  <p>Thomas Diewald</p>
  <p>Webentwicklung</p>
  </center>
</footer>
</html>