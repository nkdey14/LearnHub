<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learners List</title>
</head>
<body>
<div align="center">
<a href="searchLearner"><input type="button" value="Search"></a>
<br><br>
	<h3>List of Learners</h3><br>
	
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
			<th>Edit</th>
			<th>Delete</th>
			<th>Email</th>
			<th>Check Status</th>
		</tr>
		
		<c:forEach var="learner" items="${learners}">
		
		<tr>		
			<td>${learner.id}</td>
			<td><a href="learnerInfoData?id=${learner.id}">${learner.firstName}</a></td>
			<td>${learner.lastName}</td>
			<td>${learner.gender}</td>
			<td>${learner.email}</td>
			<td>${learner.mobile}</td>
			<td>${learner.city}</td>
			<td>${learner.course}</td>
			<td>${learner.duration}</td>
			<td>${learner.fees}</td>
			<td><a href="updateLearner?id=${learner.id}"><input type="button" value="Edit"></a></td>
			<td><a href="deleteLearner?id=${learner.id}"><input type="button" value="Delete"></a></td>
			<td><a href="sendEmail?email=${learner.email}"><input type="button" value="Email"></a></td>
			<td><a href="checkPayment?mobile=${learner.mobile}"><input type="button" value="Check Status"></a></td>
		</tr>
		
		</c:forEach>
	</table>
	<br>
	${msg}
</div>
</body>
</html>
<%@ include file="footer.jsp" %>