<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment procedure</title>

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
						<li class="nav-item"><a class="nav-link" href="#">View
								status</a></li>
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

	<section style="padding: 7% 15%;">
		<h2>Complete your payment!</h2>
		<form action="addride" method="post">
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">User
					Id:</label>
				<div class="col-sm-10">
					<input type="text" name="userid" readonly
						class="form-control-plaintext" id="staticEmail" value=${userid }>
				</div>
			</div>
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">Source:</label>
				<div class="col-sm-10">
					<input type="text" name="source" readonly
						class="form-control-plaintext" id="staticEmail" value=${source }>
				</div>
			</div>
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">Destination:</label>
				<div class="col-sm-10">
					<input type="text" name="destination" readonly
						class="form-control-plaintext" id="staticEmail"
						value=${destination }>
				</div>
			</div>
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">Plan:</label>
				<div class="col-sm-10">
					<input type="text" name="plan" readonly
						class="form-control-plaintext" id="staticEmail" value=${plan }>
				</div>
			</div>
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">Fare(Rs.):</label>
				<div class="col-sm-10">
					<input type="text" name="fare" readonly
						class="form-control-plaintext" id="staticEmail" value=${fare }
						style="font-weight: bold;">
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 mb-3">
					<label for="cc-name">Name on card</label> <input type="text"
						class="form-control" id="cc-name" placeholder="" required="">
					<small class="text-muted">Full name as displayed on card</small>
					<div class="invalid-feedback">Name on card is required</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="cc-number">Credit card number</label> <input
						type="text" class="form-control" id="cc-number"
						placeholder="xxxx-xxxx-xxxx" required="">
					<div class="invalid-feedback">Credit card number is required
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 mb-3">
					<label for="cc-expiration">Expiration</label> <input type="text"
						class="form-control" id="cc-expiration" placeholder="mm/yy"
						required="">
					<div class="invalid-feedback">Expiration date required</div>
				</div>
				<div class="col-md-3 mb-3">
					<label for="cc-expiration">CVV</label> <input type="text"
						class="form-control" id="cc-cvv" placeholder="" required="">
					<div class="invalid-feedback">Security code required</div>
				</div>
			</div>
			<button class="btn btn-primary btn-lg" name="submit"
				value="confirmed" type="submit">
				Proceed<i class="fas fa-arrow-alt-circle-right"
					style="padding-left: 3px"></i>
			</button>
		</form>
	</section>

	<footer id="footer" class="bg-light">
		<p>© Copyright 2020 VCabs</p>
	</footer>

</body>
</html>