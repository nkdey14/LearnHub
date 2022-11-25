<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Bill</title>
</head>
<body>
<div align="center">
${msg}
<br><br>
	<h3>Search Bill</h3><br>
	
	<form action="getBillingDetails" method="post">
		<table>
			<tr>
				<td>Enter the Learner Mob no.</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="search"></td>  <td><a href="listAllBills"><input type="button" value="Back"></a></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>