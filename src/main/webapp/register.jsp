<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Register</title>
	</head>
	<body>
		<h1>Please fill out the following form</h1>
		<form action="registerprocess.jsp">
			<table>
				<tr>
					<td>First Name: </td><td><input type="text" name="fname"/></td>
				</tr>
				<tr>
					<td>Last Name: </td><td><input type="text" name="lname"/></td>
				</tr>
				<tr>
					<td>Email: </td><td><input type="text" name="email"/></td>
				</tr>
				<tr>
					<td>Birth Date: </td><td><input type="date" name="dobtxt"/></td>
				</tr>
				<tr>
					<td>Type of Document: </td>
					<td>
						<select name="typeOfDocument">
							    <option value="Driver License">Driver License</option>
							    <option value="Passport">Passport</option>
							    <option value="SSN">SSN</option>
							    <option value="Other">Other</option>
	  					</select>
					</td>
				</tr>
				<tr>
					<td>Document Number: </td><td><input type="text" name="docNumber"/></td>
				</tr>
				<tr>
					<td>Phone Number: </td><td><input type="text" name="phoneNumber"/></td>
				</tr>
				<tr>
					<td>Password: </td><td><input type="password" name="password"/></td>
				</tr>
				<tr><td></td><td><input type="submit" value="Register"/></td>
			</table>
		</form>
	</body>
</html>