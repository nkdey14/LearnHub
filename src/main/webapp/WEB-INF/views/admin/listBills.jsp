<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing List</title>
</head>
<body>
<div align="center">
<a href="searchBill"><input type="button" value="Search"></a>
<br><br>
	<h3>List of Bills</h3><br>
	
	<table border='1' cellspacing='1' cellpadding='8'>
	
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gender</th>
			<th>Email Id</th>
			<th>Mob no.</th>
			<th>City</th>
			<th>Course</th>
			<th>Duration</th>
			<th>Fees</th>
			<th>Mode of Payment</th>
			<th>Email</th>
		</tr>
		
		<c:forEach var="bill" items="${bills}">
		
		<tr>		
			<td>${bill.id}</td>
			<td><a href="billingInfoData?id=${bill.id}">${bill.firstName}</a></td>
			<td>${bill.lastName}</td>
			<td>${bill.gender}</td>
			<td>${bill.email}</td>
			<td>${bill.mobile}</td>
			<td>${bill.city}</td>
			<td>${bill.course}</td>
			<td>${bill.duration}</td>
			<td>${bill.fees}</td>
			<td>${bill.paymentMode}</td>
			<td><a href="sendEmail?email=${bill.email}"><input type="button" value="Email"></a></td>
		</tr>
		
		</c:forEach>
	</table>
	<br>
	${msg}
</div>
</body>
</html>
<%@ include file="footer.jsp" %>