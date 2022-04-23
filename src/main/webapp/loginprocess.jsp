<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="DAO.UserDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="obj" class="model.User"/>   
<jsp:setProperty property="*" name="obj"/> 

<jsp:useBean id="DAOObj" class="DAO.UserDAO"/>   
<jsp:setProperty property="*" name="DAOObj"/>  
  
<%  
	boolean status = DAOObj.validateUser(obj);  

	if(status){  
		out.println("You are successfully logged in");  
		session.setAttribute("session","TRUE");
		session.setAttribute("name", obj.getFname());
%>  
		<jsp:forward page="test.jsp"></jsp:forward>  
<%  
	}else{  
		out.println("<span style='color:red'>Sorry, email or password error, try again, if you have not registered</span></br>");  
		out.println("<a href='register.jsp'>Register Here</a>"); 
%>  
		<jsp:include page="login.jsp"></jsp:include>  
<%  
	}  
%>  
