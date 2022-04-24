
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="DAO.UserDAO" %>
<%@page import="model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="obj" class="model.User"/>   
<jsp:setProperty property="*" name="obj"/> 

<jsp:useBean id="DAOObj" class="DAO.UserDAO"/>   
<jsp:setProperty property="*" name="DAOObj"/>  
  
<%  
	User user = DAOObj.validateUser(obj);  
	System.out.print(user);
	if(user != null){  
		out.println("You are successfully logged in");
		session.setAttribute("user", user);
		session.setAttribute("session","TRUE");
		RequestDispatcher rd = request.getRequestDispatcher("searchflights.jsp");
		rd.forward(request, response);
	}else{  
		out.println("<span style='color:red'>Sorry, email or password error, try again, if you have not registered</span></br>");  
		out.println("<a href='register.jsp'>Register Here</a>"); 
%>  
		<jsp:include page="login.jsp"></jsp:include>  
<%  
	}  
%>  
