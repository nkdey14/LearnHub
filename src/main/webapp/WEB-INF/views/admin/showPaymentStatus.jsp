<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Payment Status</title>
</head>
<body>
<div align="center">
	<h3>Payment Status</h3><br>
	
	<p><strong>Status: </strong>${msg}</p>
	
	<a href="generateBill?mobile=${mobile}"><input type="button" value="Generate Bill"></a>   <a href="listAllLearners"><input type="button" value="Back"></a>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>