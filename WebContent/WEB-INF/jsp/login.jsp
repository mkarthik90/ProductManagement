<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="normalize.css">
<script type="text/javascript" src="js/jquery-valid-lightbox-v1.1.js"></script>
    <link href="css/jquery-valid-lightbox-v1_1.css" rel="stylesheet" type="text/css" />

</head>
<body>
<form:form name="loginForm" action="login.do" commandName="loginCommand" method="POST">
<h1>Login</h1>
<c:if test="${loginCommand.loginStatus == false}">
	<h2><font color="red">Please Login Again!! </font></h2>
</c:if>	
<label for="username">User Name:</label>
<form:input path="userName"/><br/>
<label for="password">Password:</label>
<form:password path="password"/><br/>
<input type="submit" value="Login"/>
</form:form>
</body>
</html>