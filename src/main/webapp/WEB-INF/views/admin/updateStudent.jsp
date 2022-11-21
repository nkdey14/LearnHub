<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Details</title>
</head>
<body>
<div align="center">
	<h3>Update Student Details</h3><br>
	
	<form action="updateStudentData" method="post">
	
		<table>
			<tr>
				<td><input type="hidden" name="id" value="${student.id}"></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName" value="${student.firstName}"></td>
			</tr>
			
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName" value="${student.lastName}"></td>
			</tr>
			
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" value="${student.gender}"></td>   
			</tr>
			
			<tr>
				<td>Email Id</td>
				<td><input type="email" name="email" value="${student.email}"></td>
			</tr>
			
			<tr>
				<td>Mob no.</td>
				<td><input type="text" name="mobile" value="${student.mobile}"></td>
			</tr>
			
			<tr>
				<td>City</td>
				<td><input type="text" name="city" value="${student.city}"></td>
			</tr>
			
			<tr>
				<td>Course</td>
				<td><select name="course">
					  <option value="Java Full Stack">Java Full Stack</option>
					  <option value="Python Full Stack">Python Full Stack</option>
					  <option value="Full Stack Web Development">Full Stack Web Development</option>
					  <option value="Android App Development">Android App Development</option>
					  <option value="Data Science">Data Science</option>
					  <option value="Salesforce Development">Salesforce Development</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>