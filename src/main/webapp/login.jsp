<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1>Welcome to FlyAway</h1>
	<form action="loginprocess.jsp" method="post">
		Email:<input type="text" name="email"/><br/><br/>  
		Password:<input type="password" name="password"/><br/><br/>  
		<input type="submit" value="login"/>
	</form>
</body>
</html>