<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assigning Employee for the Event</title>
</head>
<body>
<form:form name="eventemployeeform" action="eventassign" commandName="eventCommand" method="POST">
<table><tr><td><h3>Select the event</h3></td><td><form:select path="Eventname">
<form:option value="0" label="Select" />
<form:options items="${eventname}" itemValue="eventname" itemLabel="eventname" />
</form:select><br/></td></tr>
<tr><td><h3>Select the employee</h3></td><td>
<form:select path="Employee">
<form:option value="0" label="Select" />
<form:options items="${employee}" itemValue="empid" itemLabel="name" />
</form:select></td></tr> 
<tr><td><h3>Select the Products</h3></td><td><form:select path="Products">
<form:option value="0" label="Select" />
<form:options items="${Products}" itemValue="products" itemLabel="products" />
</form:select><br/></td></tr>
</table>

</form:form>
</body>
</html>