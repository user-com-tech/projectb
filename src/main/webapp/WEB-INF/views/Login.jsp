<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
.carousel-inner img {
	width: 100%;
	height: 200px;
}
</style>

</head>
<body>
	<div class="container-fluid "
		style="height: 45px; background-color: red">
		<img src="comvivalogo.png" class="float-left"
			style="width: 140px; padding: 2px">
	</div>
	<br>

	<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="pic1.png" alt="business">
			</div>
			<div class="carousel-item">
				<img src="pic2.jpg" alt="connective">
			</div>
			<div class="carousel-item">
				<img src="pic3.jpg" alt="client Services">
			</div>
		</div>

		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	<br>

	<div class="container-fluid">
		<h4
			style="background-image: linear-gradient(to right, black, white); height: 40px; padding: auto; color: white">Welcome
			to iPACS</h4>
	</div>

	<div class="container"
		style="width: 40%; border =1px; background-color: lavender">
		<br>
		<form class="form-container" name="frm" method="post"
			action="validatelogin">
			<div class="row">
				<div class="col-md-3 ">User Name :</div>
				<div class="col-md-9 ">
					<input type="text" class="form-control" name="username"
						id="username" required>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-3">Password :</div>
				<div class="col-md-9">
					<input type="password" name="password" class="form-control"
						id="password" required>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<button type="submit" class="btn btn-primary" id="signin"
						 style="align: justify">Sign In</button>
				</div>
			</div>
		<div>
		<%
		String text=(String) request.getAttribute("valid");
		String invalidtext= (String) request.getAttribute("invalid");
		
		%>
		<p style="color:red; text-size:2em"><% if(text!=null) out.println(text); %> <% if(invalidtext!=null) out.println(invalidtext);%></p>
		</div>
		</form>
	</div>
</body>
</html>