<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Billing Info</title>
</head>
<body>
<div align="center">
${msg}
<br><br>
	<h3>View Billing Details</h3><br>
	
	<form action="showBillingDetails" method="post">
		Enter your Registered Mob no. <input type="text" name="mobile">
		<input type="submit" value="Search">
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>