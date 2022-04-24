<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review</title>
</head>
<body>
	<%
		User user = (User)session.getAttribute("user");
		
	%>
	<h1>Booking Details</h1>
	<h2>Passenger Information</h2>
	<table>
		<tr><td>First Name:</td><td><%user.getFname(); %></td></tr>
		<tr><td>Last Name:</td><td><%user.getLname(); %></td></tr>
		<tr><td>Email:</td><td><%user.getEmail(); %></td></tr>
		<tr><td><%user.getTypeOfDocument(); %></td><td><%user.getDocNumber(); %></td></tr>
		<tr><td>Date of Birth:</td><td><%DateFormat.getDateInstance().format(user.getDob()); %></td></tr>
	</table>
	<h2>Flight Information</h2>
	<table>
		<tr>
			<td><%//out.print(f.getAirline()); %></td>
			<td><%//out.print(f.getFlightNumber()); %></td>
			<td><%//out.print(DateFormat.getDateInstance().format(f.getDepartureDate())); %></td>
			<td><%//out.print(f.getDepartureTime()); %></td>
			<td><%//out.print(DateFormat.getDateInstance().format(f.getArrivalDate())); %></td>
			<td><%//out.print(f.getArrivalTime()); %></td>
			<td><%//out.print(NumberFormat.getCurrencyInstance().format(f.getPrice())); %></td>
			<td><a href="">Click Here</a></td>
		</tr>
	</table>
</body>
</html>