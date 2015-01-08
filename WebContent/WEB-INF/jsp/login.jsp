<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<h2>Login Page</h2>
<form:form name="loginForm" action="login.do" commandName="loginCommand" method="POST">
<c:if test="${loginCommand.loginStatus == false}">
	<h2><font color="red">Please Login Again!! </font></h2>
</c:if>	
<h3>UserName</h3><form:input path="userName"/><br/>
<h3>Password</h3><form:password path="password"/><br/>
<input type="submit" value="Login"/>
</form:form>
</body>
</html>