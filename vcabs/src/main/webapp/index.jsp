<html>
<head>
<meta charset="ISO-8859-1">
<title>VCabs</title>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Fontdiner+Swanky&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="CSS/home.css">

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

	<section id="title">

		<div class="container-fluid">
			<nav class="navbar navbar-expand-lg navbar-light bg-dark">
				<h1 class="logo">Vcabs</h1>

				<div class="collapse navbar-collapse d-flex justify-content-end "
					id="navbarNav">

					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#features">Features</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#price">Pricing</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="login.jsp">Login/Signup</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="mailto:ravikj17@gmail.com">Contact us</a></li>
					</ul>
				</div>
			</nav>


		</div>
		<a href="login.jsp" class="btn btn-danger btn-lg active "
			role="button" aria-pressed="true" style="margin: 40px;">Book a
			ride</a>

	</section>


	<section id="features" class="bg-dark">
		<h2
			style="text-align: center; font-size: 3rem; background-color: #ffffff">Features
			of VCabs service</h2>

		<div id="carouselExampleCaptions" class="carousel slide"
			data-ride="pause" style="padding: 1.5rem;">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="Images/gps.jpeg" class="d-block w-50  featuresimage"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="featuresheading">Live Tracking</h5>
						<br>
						<p class="faturesparagraph">Track your GPS position and share
							it in real time on a map with your friends or family.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/service24.jpg" class="d-block w-50  featuresimage"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="featuresheading">24/7 service</h5>
						<br>
						<p class="faturesparagraph">We provide our services any
							time,any day.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/driver.png" class="d-block w-50  featuresimage"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="featuresheading">Safe rides</h5>
						<br>
						<p class="faturesparagraph">Travel safe with our top class
							drivers.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</section>

	<section id="price">

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
