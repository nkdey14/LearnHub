<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Course Info</title>
</head>
<body>
<div align="center">
${msg}
<br><br>
	<h3>View Course Details</h3><br>
	
	<form action="showCourseDetails">
		Enter your Registered Mob no. <input type="text" name="mobile">
		<input type="submit" value="Search">
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>