
<%@page import="java.text.DateFormat"%>
<%@page import="model.FlightDetails"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	User user = (User)session.getAttribute("user"); 
	FlightDetails flight = (FlightDetails)session.getAttribute("flight"); 
	%>
	
	<h1>Flight confirmed</h1>
	<p>Congratulations <%= user.getFname() %>!, your flight from: <%= flight.getOriginCity() %> to: <%= flight.getDestinationCity() %> is now confirmed.</br>
	
	Please make sure to have all of your documents available at the time of check in.<br><br>Here are the details of your flight:</p>
	
	<h2>Flight Information</h2>
	<table>
		<tr style="background:#a2b9bc">
    			<th>AIRLINE</th>
    			<th>FLIGHT NUMBER</th>
    			<th>DEPARTURE DATE</th>
    			<th>DEPARTURE TIME</th>
    			<th>ARRIVAL DATE</th>
    			<th>ARRIVAL TIME</th>
  		</tr>
		<tr>
			<td><%out.print(flight.getAirline()); %></td>
			<td><%out.print(flight.getFlightNumber()); %></td>
			<td><%out.print(DateFormat.getDateInstance().format(flight.getDepartureDate())); %></td>
			<td><%out.print(flight.getDepartureTime()); %></td>
			<td><%out.print(DateFormat.getDateInstance().format(flight.getArrivalDate())); %></td>
			<td><%out.print(flight.getArrivalTime()); %></td>
		</tr>
	</table>

</body>
</html>