<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/vcabs";
String userid = "root";
String password = "database";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update driver</title>

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

	<section style="padding: 3% 15%;">
		<form action="AllocateDriver" method="post">
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">User
					id</label>
				<div class="col-sm-10">
					<input type="text" name="userid" readonly
						class="form-control-plaintext" value=${userid }>
				</div>
			</div>
			
			<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from driver";
resultSet = statement.executeQuery(sql);
%>

	 <div class="form-group">
    <label for="exampleFormControlSelect1" name="driverid"> Select Driver</label>
    <select class="form-control" id="exampleFormControlSelect1" name="driverid">
    <%  while(resultSet.next()){ %>
      <option><%=resultSet.getString("driverid") %></option>
        <% }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    </select>
  </div>

			<button type="submit" class="btn btn-primary mb-2">Allocate</button>

		</form>
	</section>


</body>
</html>