<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>De-registration</title>
</head>
<body>
<form:form name="deregistrationForm" action="deregistr.do" commandName="deregistrCommand" method="POST">
<c:if test="${deregistCommand.DeregistrStatus == false}">
	<h2><font color="red">There is no employee </font></h2>
</c:if>	
<h3>employee id</h3><form:input path="Empid"/><br/>
<h3>name</h3><form:input path="userName"/><br/>
<input type="submit" value="DeRegister"/>
</form:form>
</body>
</html>