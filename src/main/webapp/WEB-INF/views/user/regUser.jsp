<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<style>
	
	img{
		width: 30%;
		height:30%
	}
</style>
</head>
<body style="background-color:#e0ffff; font-size:17px">
<div align="center">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="#">Enactus</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
	</nav>
	
	<br>
	
	<a href="showUserLoginPage"><input type="button" value="Sign in"></a>
	
	<br>
	
	<img src="https://png.pngtree.com/png-clipart/20220823/original/pngtree-man-sitting-table-with-laptop-png-image_8448440.png" alt="background-image">
	
	<br><br>
	
	<h3>Register here.....</h3><br>
	
	<form action="saveUser" method="post">
		<table>
			<tr>
				<td>Enter First Name</td>
				<td><input type="text" name="firstName"></td>
			</tr>
			
			<tr>
				<td>Enter Last Name</td>
				<td><input type="text" name="lastName"></td>
			</tr>
			
			<tr>
				<td>Enter Mob no.</td>
				<td><input type="text" name="mobile" placeholder="Enter your Registered Mob no."></td>
			</tr>
			
			<tr>
				<td>Enter Email Id</td>
				<td><input type="email" name="email"></td>
			</tr>
			
			<tr>
				<td>Enter Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="Register"></td>
			</tr>
		</table>
	</form>
</div>
<br>
</body>
</html>