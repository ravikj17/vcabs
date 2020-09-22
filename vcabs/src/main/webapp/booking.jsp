<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book your ride</title>

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

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("uname") == null) {
		response.sendRedirect("login.jsp");
	}
	%>


	<section id="title">

		<div class="container-fluid">
			<nav class="navbar navbar-expand-lg navbar-light bg-dark">
				<h1 class="logo">Vcabs</h1>
				<h3 class="text-white bg-dark">Welcome ${uname }</h3>
				<div class="collapse navbar-collapse d-flex justify-content-end "
					id="navbarNav">

					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="booking.jsp"><i
								class="fas fa-home"></i>Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="viewstatus.jsp">View status</a></li>
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

	<h2 style="text-align: center; color: red;">${ridemessage }</h2>
	<h2 style="text-align: center; color: red;">${cancellation }</h2>

	<section id="book-ride">

		<h2 style="color: #ffffff; background-color: black; padding: 2%;">
			Book your ride<i class="fas fa-taxi" style="padding-left: 2%;"></i>
		</h2>
		<form class="bg-light address-form" action="payment" method="post">
			<div class="col-md-6 mb-3 book-address">
				<label for="validationDefault03">Source</label> <input type="text"
					name="source" class="form-control" id="validationDefault03"
					placeholder="Source" required>
			</div>
			<div class="col-md-6 mb-3 book-address">
				<label for="validationDefault03">Destination</label> <input
					type="text" name="destination" class="form-control"
					id="validationDefault03" placeholder="Destination" required>
			</div>
			<div class="col-md-6 mb-3 book-address">
				<label for="validationDefault03">Estimated distance(in km)</label> <input
					type="text" name="distance" class="form-control"
					id="validationDefault03" placeholder="Estimated distance" required>
			</div>
			<div class="col-md-6 mb-3 book-address">
				<label for="exampleFormControlSelect1">Select plan</label> <select
					class="form-control" name="plan" id="exampleFormControlSelect1">
					<option>Bike</option>
					<option>Simple</option>
					<option>Premium</option>
				</select>
			</div>
			<button class="btn btn-primary btn-lg" type="submit">Proceed
				for payment</button>
		</form>


	</section>

	<section id="price" style="padding-bottom: 40px;">

		<div class="bg-dark">
			<h2 style="font-size: 3rem; color: #ffffff">A Plan for Your
				Needs</h2>
			<p style="color: #ffffff">Simple and affordable price plans for
				your rides.</p>
		</div>
		<div class="row" style="margin: 0">
			<div class="pricing-column col-lg-4 col-md-6">
				<div class="card">
					<div class="card-header">
						<h3>Bike</h3>
					</div>
					<div class="card-body">
						<img src="Images/bike2.png" class="img-fluid"
							alt="Responsive image">
						<h2>Rs. 5 / km</h2>
						<p>Affordable price</p>
						<p>Suitable for solo ride</p>
						<p>Best for small routes</p>
					</div>
				</div>
			</div>
			<div class="pricing-column col-lg-4 col-md-6">
				<div class="card">
					<div class="card-header">
						<h3>Simple</h3>
					</div>
					<div class="card-body">
						<img src="Images/simplecar.jpeg" class="img-fluid"
							alt="Responsive image" style="padding-bottom: 82px;">
						<h2>Rs. 10 / km</h2>
						<p>Affordable price</p>
						<p>Everyday dependable rides</p>
						<p>Suitable for 2 persons</p>
					</div>
				</div>
			</div>
			<div class="pricing-column col-lg-4">
				<div class="card">
					<div class="card-header">
						<h3>Premium</h3>
					</div>
					<div class="card-body">
						<img src="Images/premiumcar.jpg" class="img-fluid"
							alt="Responsive image" style="padding-bottom: 60px;">
						<h2>Rs. 20 / km</h2>
						<p>Comfortable AC car</p>
						<p>Free wifi</p>
						<p>Music and TV</p>
					</div>
				</div>
			</div>
		</div>

	</section>

	<footer id="footer" class="bg-light">
		<p>© Copyright 2020 VCabs</p>
	</footer>

</body>
</html>