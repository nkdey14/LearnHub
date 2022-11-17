<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students List</title>
</head>
<body>
<div align="center">
<a href="viewCreateStudent"><input type="button" value="New Student"></a>

<br><br>
	<h3>List of Students</h3><br>
	
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
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		
		<c:forEach var="student" items="${students}">
		
		<tr>		
			<td>${student.id}</td>
			<td>${student.firstName}</td>
			<td>${student.lastName}</td>
			<td>${student.gender}</td>
			<td>${student.email}</td>
			<td>${student.mobile}</td>
			<td>${student.city}</td>
			<td>${student.course}</td>
			<td><a href="updateStudent?id=${student.id}"><input type="button" value="Edit"></a></td>
			<td><a href="deleteStudent?id=${student.id}"><input type="button" value="Delete"></a></td>
		</tr>
		
		</c:forEach>
	</table>
	<br>
	${msg}
</div>
</body>
</html>
<%@ include file="footer.jsp" %>