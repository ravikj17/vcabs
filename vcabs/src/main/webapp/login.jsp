<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/login.css">

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


<title>Login</title>
</head>
<body style="background-color: lightgray">

	<form class="bg-dark text-white" action="loginRegister" method="post">
		${message }
		<div class="formstyle">
			<div>
				<h2>Login</h2>
			</div>
			<div class="form-group">
				<label for="validationDefault03">Userid</label> <input type="text"
					name="userid" class="form-control" id="validationDefault03"
					placeholder="Enter Userid" required>
			</div>
			<div class="form-group">

				<label for="exampleInputPassword1">Password</label> <input
					type="password" name="password1" class="form-control"
					id="validationDefault03" placeholder="Password" required>
			</div>
			<button type="submit" name="submit" class="btn btn-primary"
				value="login">Login</button>
			<br>
			<p>
				Don't have an account? <a href="register.jsp">SignUp</a>
			</p>
		</div>
	</form>


</body>
</html>