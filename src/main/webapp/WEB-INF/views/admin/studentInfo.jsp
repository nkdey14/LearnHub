<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
<div align="center">
${msg}
<br><br>
	<h3>Student Details</h3>
	
	<table border='1' cellspacing='1' cellpadding='8'>
		<tr>
			<th>First Name</th>
			<td>${student.firstName}</td>
		</tr>
		<tr>
			<th>Last Name</th>
			<td>${student.lastName}</td>
		</tr>
		<tr>
			<th>Gender</th>
			<td>${student.gender}</td>
		</tr>
		<tr>
			<th>Email Id</th>
			<td>${student.email}</td>
		</tr>
		<tr>
			<th>Mob no.</th>
			<td>${student.mobile}</td>
		</tr>
		<tr>
			<th>City</th>
			<td>${student.city}</td>
		</tr>
		<tr>
			<th>Course</th>
			<td>${student.course}</td>
		</tr>
	</table>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>