<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<center><h1>Registration Page</h1></center>
<form:form name="Registionform" action="Registration.do" commandName="Regcommand" method="post">
<h3>Username</h3><form:input path="Username"/><br/>
<h3>Firstname</h3><form:input path="FirstName"/><br/>
<h3>Lastname</h3><form:input path="LastName"/><br/>
<h3>Email</h3><form:input path="Email"/><br/>
<h3>Employee ID</h3><form:input path="EmpId"/><br/>
<h3>Password</h3><form:password path="Password"/><br/>
<input type="submit" value="Register"/>
</form:form>
</body>
</html>