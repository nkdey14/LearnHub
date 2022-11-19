<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enroll Course</title>
</head>
<body>
<div align="center">
	<h3>Enroll in Course</h3><br>
	
	<form action="verifyCourseDetails" method="post">
		<table>
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
				<td>Enter Email Id</td>
				<td><input type="email" name="email" value="${student.email}"></td>
			</tr>
			
			<tr>
				<td>Enter Mob no.</td>
				<td><input type="text" name="mobile" value="${student.mobile}"></td>
			</tr>
			
			<tr>
				<td>Enter City</td>
				<td><input type="text" name="city" value="${student.city}"></td>
			</tr>
			
			<tr>
				<td>Course</td>
				<td><input type="text" name="course" value="${student.course}"></td>
			</tr>
			
			<tr>
				<td>Duration</td>
				<td>
					<select name="duration">
					  <option value="3.5 months">3.5 months</option>
					  <option value="4 months">4 months</option>
					  <option value="6 months">6 months</option>
					  <option value="4.5 months">4.5 months</option>
					  <option value="4 months">4 months</option>
					  <option value="4.5 months">4.5 months</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>Fees</td>
				<td>
					<select name="fees">
					  <option value="36,000.00">36,000.00</option>
					  <option value="45,000.00">45,000.00</option>
					  <option value="75,000.00">75,000.00</option>
					  <option value="40,000.00">40,000.00</option>
					  <option value="50,000.00">50,000.00</option>
					  <option value="30,000.00">30,000.00</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="Confirm"></td>  <td><a href="listAllStudents"><input type="button" value="Back"></a></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>