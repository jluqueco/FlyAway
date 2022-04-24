<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="obj" class="model.User"/>   
<jsp:setProperty property="*" name="obj"/> 

<jsp:useBean id="DAOObj" class="DAO.UserDAO"/>   
<jsp:setProperty property="*" name="DAOObj"/>  
  
<%  
	Date dob = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dobtxt"));
	System.out.println(obj);
	obj.setDob(dob);
	System.out.println(obj);
	DAOObj.registerUser(obj);  


		out.println("You are Registered");    

%>  
	<jsp:forward page="login.jsp"></jsp:forward>  
<%  
	
%>  