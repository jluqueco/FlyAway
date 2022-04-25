<%@page import="java.text.NumberFormat"%>
<%@page import="model.FlightDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Booking Confirmation</h1>
	<p>The total cost of your flight to <%out.print(((FlightDetails)(session.getAttribute("flight"))).getDestinationCity().toUpperCase()); %> 
	is: <b><%out.print(NumberFormat.getCurrencyInstance().format(((FlightDetails)(session.getAttribute("flight"))).getPrice())); %></b></p>
	
	<form action="paymentconfirmation.jsp">
		<button type="submit" style="background-color: #a2b9bc;font-size: 16px;">Pay</button>
		<button type="submit" style="background-color: #c94c4c;font-size: 16px;"formaction="searchflights.jsp">Cancel</button>
	</form>
</body>
</html>