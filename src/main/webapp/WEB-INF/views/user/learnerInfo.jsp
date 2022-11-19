<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learner Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
<div align="center">
${msg}
<br><br>
	<h3>Learner Details</h3><br>
	
	<table border='1' cellspacing='1' cellpadding='8'>
		<tr>
			<th>First Name</th>
			<td>${learner.firstName}</td>
		</tr>
		<tr>
			<th>Last Name</th>
			<td>${learner.lastName}</td>
		</tr>
		<tr>
			<th>Gender</th>
			<td>${learner.gender}</td>
		</tr>
		<tr>
			<th>Email Id</th>
			<td>${learner.email}</td>
		</tr>
		<tr>
			<th>Mob no.</th>
			<td>${learner.mobile}</td>
		</tr>
		<tr>
			<th>City</th>
			<td>${learner.city}</td>
		</tr>
		<tr>
			<th>Course</th>
			<td>${learner.course}</td>
		</tr>
		<tr>
			<th>Duration</th>
			<td>${learner.duration}</td>
		</tr>
		<tr>
			<th>Fees</th>
			<td>${learner.fees}</td>
		</tr>
	</table>
	<br>
	<a href="proceedPayment?mobile=${learner.mobile}"><input type="button" value="Proceed Payment"></a>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>