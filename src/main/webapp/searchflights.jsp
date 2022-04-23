
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<!--  sql:setDataSource 	driver="com.mysql.cj.jdbc.Driver" 
							url="jdbc:mysql://localhost:3306/FlyAway" 
							user="jluqueco"
							password="93wchsrs" var="conn"/>
							
		<sql:query dataSource="${conn}" var="res">
			select * from FlightDetails
		</sql:query> 
	
		<h1>Hello <% out.print(session.getAttribute("name")); %></h1> 
		<h2>Enter data to filter flights</h2>
		<form action="flights.jsp" method="post">
			<table> 
				<tr>
					<td>Origin City:</td>
					<td>
						<select name="origincity">
		        			<c:forEach items="${res.rows}" var="row">
		            			<option value="${row.originCity}">${row.originCity}</option>
		            		</c:forEach>
		    			</select>
					</td>
					<td>Destination City:</td>
					<td>
						<select name="destinationcity">
		        			<c:forEach items="${res.rows}" var="row">
		            			<option value="${row.destinationCity}">${row.destinationCity}</option>
		            		</c:forEach>
		    			</select>
					</td>
				</tr>
				<tr>
					<td>Date of departure:</td>
					<td>
						<select name="departuredate">
		        			<c:forEach items="${res.rows}" var="row">
		            			<option value="${row.departureDate}">${row.departureDate}</option>
		            		</c:forEach>
		    			</select>
					</td>
					<td>
						<input type="submit" value="Search"/>
					</td>
				</tr>
			</table>
		</form>-->
		
		<h1>SearchFlights.jsp</h1>
	</body>
</html>