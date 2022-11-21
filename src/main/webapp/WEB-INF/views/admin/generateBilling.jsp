<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Bill</title>
</head>
<body>
<div align="center">
	<h3>Generate Bill</h3><br>
	
	<form action="saveBill" method="post">
	
		<table>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName" value="${learner.firstName}"></td>
			</tr>
			
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName" value="${learner.lastName}"></td>
			</tr>
			
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" value="${learner.gender}" readonly></td>   
			</tr>
			
			<tr>
				<td>Email Id</td>
				<td><input type="email" name="email" value="${learner.email}"></td>
			</tr>
			
			<tr>
				<td>Mob no.</td>
				<td><input type="text" name="mobile" value="${learner.mobile}"></td>
			</tr>
			
			<tr>
				<td>City</td>
				<td><input type="text" name="city" value="${learner.city}"></td>
			</tr>
			
			<tr>
				<td>Course</td>
				<td><input type="text" name="course" value="${learner.course}" readonly></td>
			</tr>
			
			<tr>
				<td>Duration</td>
				<td><input type="text" name="duration" value="${learner.duration}" readonly></td>
			</tr>
			
			<tr>
				<td>Fees</td>
				<td><input type="text" name="fees" value="${learner.fees}"readonly></td>
			</tr>
			
			<tr>
				<td>Mode of Payment</td>
				<td><input type="text" name="paymentMode" value="Debit Card" readonly></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="Generate Bill"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>