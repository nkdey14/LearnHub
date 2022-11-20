<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Information</title>
</head>
<body>
<div align="center">
	<h3>Enter the Card Details</h3><br>
	
	<form action="confirmPayment" method="post">
		<table>
			<tr>
				<td>Payable Amount</td>
				<td><input type="text" name="fees" value="${fees}" readonly></td>
			</tr>
			<tr>
				<td>Name on the Card</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Card Number</td>
				<td><input type="text" name="cardNum"></td>
			</tr>
			<tr>
				<td>Expiry Date</td>
				<td><input type="date" name="expDate"></td>
			</tr>
			<tr>
				<td>CVV</td>
				<td><input type="password" name="cvv"></td>
			</tr>
			<tr>
				<td><input type="hidden" name="mobile" value="${mobile}"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Pay"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>