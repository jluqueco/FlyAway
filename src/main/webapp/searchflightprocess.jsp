<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="model.FlightDetails"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="DAO.FlightDetailsDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		
		<jsp:useBean id="DAOObj" class="DAO.FlightDetailsDAO"/>   
		<jsp:setProperty property="*" name="DAOObj"/> 
		
		<%
			List<FlightDetails> flights = new ArrayList<>();
			String originCity = request.getParameter("origincity");
			String destinationCity = request.getParameter("destinationcity");
			String ddate = request.getParameter("ddate");
			flights = DAOObj.flights(originCity, destinationCity, ddate);
			session.setAttribute("flight", null);
			
			if(flights == null){
				%>
				<jsp:include page="searchflights.jsp"></jsp:include>
				<h1>No flights available with that criteria</h1>
				<%
			}else{
		%>
		<h1>Flights available:</h1>
		<table style="border: 1px solid black;">
			<tr style="background:#a2b9bc">
    			<th>AIRLINE</th>
    			<th>FLIGHT NUMBER</th>
    			<th>DEPARTURE DATE</th>
    			<th>DEPARTURE TIME</th>
    			<th>ARRIVAL DATE</th>
    			<th>ARRIVAL TIME</th>
    			<th>COST</th>
    			<th style="background:#ff7b25">BOOK</th>
  			</tr>
			<% 
				for(FlightDetails f : flights){ %>
					<tr style="border: 1px solid black; text-align:center;">
						<td><%out.print(f.getAirline()); %></td>
						<td><%out.print(f.getFlightNumber()); %></td>
						<td><%out.print(DateFormat.getDateInstance().format(f.getDepartureDate())); %></td>
						<td><%out.print(f.getDepartureTime()); %></td>
						<td><%out.print(DateFormat.getDateInstance().format(f.getArrivalDate())); %></td>
						<td><%out.print(f.getArrivalTime()); %></td>
						<td><%out.print(NumberFormat.getCurrencyInstance().format(f.getPrice())); %></td>
						<td><a href="registerbooking.jsp?flightId=<%= f.getFlightId() %>" >Click Here</a></td>
					</tr>
			<% 	} %>
		</table>
		<%	} %>
	</body>
</html>