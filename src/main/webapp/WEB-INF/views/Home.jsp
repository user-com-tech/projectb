
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
ul {
	list-style-type: none;
	line-height: 300%;
}

li {
	color: blue;
}

label {
	color: black;
}
</style>

<script>

function getCustomer()
{

var mobileno= $("#mobileno").val();
var custdata='';
$.ajax({
	type : "GET",
	url : 'http://localhost:8056/getcust',
	data : {mobileno : mobileno},
	dataType : "json",
	
	success : function(response){
	$("#details").show();
	console.log(response);
	custdata+= '<div class="row">'+

			'<div class="col-md-3">'+
				'<ul>'+
					'<li>Mobile No. :<label id="mobileno">'+(response.mobileno)+'</label></li>'+
					'<li>Name :<label id="firstname">'+response.firstname+" "+response.midname+" "+response.lastname+'</label></li>'+
					'<li>address :<label id="address">'+response.address+'</label></li>'+
					'<li><label></label></li>'+
				'</ul>'+
			'</div>'+

			'<div class="col-md-3">'+
				'<ul>'+
					'<li>Account Id:<label id="accountid">'+response.accountid+'</label></li>'+
					'<li>Bill Plan Name:<label id="billplan">'+response.billplan+'</label></li>'+
					'<li>language:<label id="language">'+response.language+'</label></li>'+
					'<li>Customer Classification:<label id="custclass">'+response.custclass+'</label></li>'+
				'</ul>'+
			'</div>'+

			'<div class="col-md-3">'+
				'<ul>'+
					'<li>Age on Network:<label id="ageonnet">'+response.ageonnet+'</label></li>'+
					'<li>Status:<label id="status">'+response.status+'</label></li>'+
					'<li>Connection Type:<label id="conntype">'+response.conntype+'</label></li>'+
					'<li>Customer Segment:<label id="custseg">'+response.custseg+'</label></li>'+
				'</ul>'+
			'</div>'+

			'<div class="col-md-3">'+
				'<ul>'+
					'<li>Bill Master:<label id="billmaster">'+response.billmaster+'</label></li>'+
					'<li>DOB:<label id="dob">'+response.dob+'</label></li>'+
					'<li>Nationality:<label id="nationality">'+response.nationality+'</label></li>'+
					'<li>Id Details:<label id="iddetails">'+response.iddetails+'</label></li>'+
				'</ul>'+
			'</div>'+

		'</div>'+
		'<br>'+
		'<hr>'+
		'<div class="container">'+

		'<ul class="nav">'+

			'<li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>'+

			'<li class="nav-item"><a class="nav-link" href="#">Case History</a></li>'+

			'<li class="nav-item"><a class="nav-link" href="#">Subscriber Details</a></li>'+

			'<li class="nav-item"><a class="nav-link" href="#">Network Details</a></li>'+

			'<li class="nav-item"><a class="nav-link" href="#">Service Orders</a></li>'+

			'<li class="nav-item"><a class="nav-link" href="#">Profile Mgmt</a></li>'+

			'<li class="nav-item"><a class="nav-link" href="#">Call	Details</a></li>'+

			'<li class="nav-item"><a class="nav-link" href="#">Interactions</a>'+
			'</li>'+
		'</ul>'+
	'</div>';
		
		$("#details").html(custdata);
	},
	 error: function (response){
		 $("#details").hide();
		$("#errorspace").html("No customer exists with this mobile no. !!");
         console.log(response);
	      }
	});
}	
</script>

</head>


<body>
	<div class="container-fluid "
		style="height: 45px; background-color: red">
		<img src="comvivalogo.png" class="float-left"
			style="width: 140px; padding: 2px">
		<div style="float: left">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link" href="/home"
					style="color: white">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/dept"
					style="color: white">Department</a></li>
			</ul>
		</div>

		<div style="float: right">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link fa fa-user" href="#"
					style="color: white">vivek</a></li>
				<li class="nav-item"><a class="nav-link fa fa-sign-out"
					href="/" style="color: white">Logout</a></li>
			</ul>
		</div>

	</div>

	<div class="container" style="height: 50px">
		<div class="container" style="float: left">
			<form class="form">
				<label>Mobile No. : </label><input type="text" name="mobileno"
					id="mobileno">
				<div class="btn-group">
					<button type="button" class="btn btn-primary" id="searchbtn"
						onclick="getCustomer()" style="margin-left: 16px">Search</button>
					<button type="reset" class="btn btn-secondary"
						style="margin-left: 16px" data-dismiss="#details" id="refreshbtn">Refresh</button>
					<p id="errorspace" style="color: red"></p>


				</div>
			</form>

		</div>
	</div>

	<br>
	<hr>

	<div class="container" id="details"
		style="background-color: lavender; width: 90%"></div>
	<br>
	<hr>

	

	<script>
$("#refreshbtn").on("click", function(){
$("div#details").hide();
$("#errorspace").hide();
});
</script>
</body>
</html>