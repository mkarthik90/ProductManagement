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
<title>De-registration</title>
<link rel="stylesheet" href="normalize.css">

</head>
<body>


<div>

<label for="title"><h1>De-registration confirmation</h1></label>
<center>
<table>
	<tr>
<td><label for="empid">Employee Id :</label></td><td></td>
<td><h3>${empid}</h3></td>
</tr><br><br>
<tr>
<td><label for="username">User Name :</label></td><td></td>
<td>${username}</td>
</tr><br><br>
</table>
</center>
<form:form name="deregistrationForm2" action="deregistr.do" commandName="deregistrCommand" method="GET">
<input type="hidden" name="Empid1" value="${empid}"/>
<input type="hidden" name="userName1" value="${username}"/>
<input type="submit" value="Deregister"/>
</form:form>
<form:form name="deregistrationForm3" action="deregistration.do">
<input type="submit" value="Back"/>
</form:form>


</div>
</body>
</html>