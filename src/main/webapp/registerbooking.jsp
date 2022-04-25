<%@page import="java.text.NumberFormat"%>
<%@page import="DAO.FlightDetailsDAO"%>
<%@page import="model.FlightDetails"%>
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
		FlightDetails f = FlightDetailsDAO.getFlight(Integer.parseInt(request.getParameter("flightId")));
		session.setAttribute("flight", f);
	%>
	<h1>Booking Details</h1>
	<h2>Passenger Information</h2>
	<table>
		<tr><td>First Name:</td><td><%=user.getFname() %></td></tr>
		<tr><td>Last Name:</td><td><%=user.getLname() %></td></tr>
		<tr><td>Email:</td><td><%=user.getEmail() %></td></tr>
		<tr><td><%=user.getTypeOfDocument() %></td><td><%=user.getDocNumber() %></td></tr>
		<tr><td>Date of Birth:</td><td><%out.print(DateFormat.getDateInstance().format(user.getDob())); %></td></tr>
	</table>
	<h2>Flight Information</h2>
	<table>
		<tr style="background:#a2b9bc">
    			<th>AIRLINE</th>
    			<th>FLIGHT NUMBER</th>
    			<th>DEPARTURE DATE</th>
    			<th>DEPARTURE TIME</th>
    			<th>ARRIVAL DATE</th>
    			<th>ARRIVAL TIME</th>
    			<th>COST</th>
  		</tr>
		<tr>
			<td><%out.print(f.getAirline()); %></td>
			<td><%out.print(f.getFlightNumber()); %></td>
			<td><%out.print(DateFormat.getDateInstance().format(f.getDepartureDate())); %></td>
			<td><%out.print(f.getDepartureTime()); %></td>
			<td><%out.print(DateFormat.getDateInstance().format(f.getArrivalDate())); %></td>
			<td><%out.print(f.getArrivalTime()); %></td>
			<td><%out.print(NumberFormat.getCurrencyInstance().format(f.getPrice())); %></td>
		</tr>
	</table>
	<form action="bookingconfirmation.jsp">
		<button type="submit" style="background-color: #a2b9bc;font-size: 16px;">Confirm</button>
		<button type="submit" style="background-color: #c94c4c;font-size: 16px;"formaction="searchflights.jsp">Cancel</button>
	</form>
</body>
</html>