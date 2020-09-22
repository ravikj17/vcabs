<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driver login</title>

<link rel="stylesheet" href="CSS/login.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>


</head>
<body >
<h2>Driver login</h2>
	<form class="bg-dark text-white" action="driverlogin" method="post">
		${message }
		<div class="formstyle">
			<div>
				<h2>Login</h2>
			</div>
			<div class="form-group">
				<label for="validationDefault03">Driverid</label> <input type="text"
					name="driverid" class="form-control" id="validationDefault03"
					placeholder="Enter Driverid" required>
			</div>
			<div class="form-group">

				<label for="exampleInputPassword1">Password</label> <input
					type="password" name="password" class="form-control"
					id="validationDefault03" placeholder="Password" required>
			</div>
			<button type="submit" name="submit" class="btn btn-primary"
				value="login">Login</button>
			<br>
		</div>
	</form>


</body>
</html>