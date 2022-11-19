<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Student Registration</title>
</head>
<body>
<div align="center">
	<h3>Enter New Student details.....</h3><br>
	
	<form action="saveStudent" method="post">
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
				<td>Gender</td>
				<td>Male <input type="radio" name="gender" value="Male"> 
        		Female <input type="radio" name="gender" value="Female"> </td>   
			</tr>
			
			<tr>
				<td>Enter Email Id</td>
				<td><input type="email" name="email"></td>
			</tr>
			
			<tr>
				<td>Enter Mob no.</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			
			<tr>
				<td>Enter City</td>
				<td><input type="text" name="city"></td>
			</tr>
			
			<tr>
				<td>Choose a Course</td>
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
				<td><input type="submit" value="Save"></td>  <td><a href="listAllStudents"><input type="button" value="Back"></a></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>