<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Learner Details</title>
</head>
<body>
<div align="center">
	<h3>Update Learner Details</h3><br>
	
	<form action="updateLearnerData" method="post">
	
		<table>
			<tr>
				<td><input type="hidden" name="id" value="${learner.id}"></td>
			</tr>
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
				<td><input type="text" name="gender" value="${learner.gender}"></td>   
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
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>