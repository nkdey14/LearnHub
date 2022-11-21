<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
<div align="center">
${msg}
<br><br>
	<h3>Billing Details</h3><br>
	
	<table border='1' cellspacing='1' cellpadding='8'>
		<tr>
			<th>First Name</th>
			<td>${bill.firstName}</td>
		</tr>
		<tr>
			<th>Last Name</th>
			<td>${bill.lastName}</td>
		</tr>
		<tr>
			<th>Email Id</th>
			<td>${bill.email}</td>
		</tr>
		<tr>
			<th>Mob no.</th>
			<td>${bill.mobile}</td>
		</tr>
		<tr>
			<th>City</th>
			<td>${bill.city}</td>
		</tr>
		<tr>
			<th>Course</th>
			<td>${bill.course}</td>
		</tr>
		<tr>
			<th>Duration</th>
			<td>${bill.duration}</td>
		</tr>
		<tr>
			<th>Fees</th>
			<td>${bill.fees}</td>
		</tr>
		<tr>
			<th>Mode of Payment</th>
			<td>${bill.paymentMode}</td>
		</tr>
	</table>
	<br>
	<a href="listAllLearners"><input type="button" value="Back"></a>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>