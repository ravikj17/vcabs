<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Driver</title>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Fontdiner+Swanky&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="CSS/booking.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>


</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}

%>

	<section id="title">

		<div class="container-fluid">
			<nav class="navbar navbar-expand-lg navbar-light bg-dark">
				<h1 class="logo">Vcabs</h1>
				<h3 class="text-white bg-dark">Welcome ${username }</h3>
				<div class="collapse navbar-collapse d-flex justify-content-end "
					id="navbarNav">

					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="admin.jsp"><i
								class="fas fa-home"></i>Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="mailto:ravikj17@gmail.com">Contact us</a></li>
						<form class="form-inline my-2 my-lg-0" action="Logout"
							method="post">
							<button class="btn  my-2 my-sm-0" type="submit">Logout</button>
						</form>
					</ul>
				</div>
			</nav>


		</div>

	</section>

	<section style="text-align: center; padding: 3% 20%;">
		<form class="bg-light" action="adddriver" method="post">
			<h2 style="color: #ffffff; background-color: black;">Add driver<i class="far fa-user"></i></h2>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="validationDefault01">First name</label> <input
					type="text" class="form-control" id="validationDefault01"
					placeholder="First name" name="firstname" required>
			</div>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="validationDefault02">Last name</label> <input
					type="text" class="form-control" id="validationDefault02"
					placeholder="Last name" name="lastname" required>
			</div>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="validationDefault02">Driver ID</label> <input
					type="text" class="form-control" id="validationDefault02"
					placeholder="Driver ID" name="driverid" required>
			</div>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="validationDefault05">Password</label> <input
					type="password" class="form-control" id="validationDefault05"
					name="password" placeholder="Password" required>
			</div>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="validationDefault03">Date of birth</label> <input
					type="date" class="form-control" id="validationDefault03"
					name="dob" placeholder="DOB" required>
			</div>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="validationDefault04">Mobile Number</label> <input
					type="text" class="form-control" id="validationDefault04"
					name="mobilenumber" placeholder="Mobile Nimber" required>
			</div>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="validationDefault05">Vehicle Number</label> <input
					type="text" class="form-control" id="validationDefault05"
					name="vehiclenumber" placeholder="Vehicle Number" required>
			</div>
			<div class="col-md-4 mb-3" style="margin: auto;">
				<label for="exampleFormControlSelect1">Select plan</label> <select
					class="form-control" name="plan" id="exampleFormControlSelect1">
					<option>Bike</option>
					<option>Simple</option>
					<option>Premium</option>
				</select>
			</div>
			<button class="btn btn-primary" type="submit">Submit form</button>
		</form>

	</section>

	<footer id="footer" class="bg-light">
		<p>© Copyright 2020 VCabs</p>
	</footer>

</body>
</html>