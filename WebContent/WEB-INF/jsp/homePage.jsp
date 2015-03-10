<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome</title>
<link rel="stylesheet" href="normalize.css">
</head>
<body>
<%

//session.setAttribute("userid",userid );
%>
	<h1>
		<center>Logged in Successfully</center>
	</h1>
	<div>
		
			
				<a href="registrationPage.do"><input type="submit" value="Employee Management"/></a>
				<a href=""><input type="submit" value="Product Management"/></a>
				<a href="eventpage.do"><input type="submit" value="Event Management"/></a>
				
				
			
	</div>	
	
</body>
</html>