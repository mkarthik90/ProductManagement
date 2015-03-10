<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.wity.command.EventCommand" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Display</title>
<link rel="stylesheet" href="normalize.css">

</head>
<body >
<div><center>
	
	<table id="customers" >
	<tr><h2>Welcome</h2></tr>
	<tr>
<td><label for="empid"><h3>Employee id</h3></label></td>
<td><h3>${empid}</h3></td>
</tr>
<tr>
<td><label for="empname"><h3>Employee name</h3></label></td>
<td><h3>${employeename}</h3></td>
</tr>
<tr>
<td><label for="eventname"><h3>Event name</h3></label></td>
<td><h3>${Eventname}</h3></td>
</tr>

<tr>
<td><label for="prod"><h3>Products</h3></label></td>
<td><h3>${Products}</h3></td>
</tr>

</table>
	</center>
	<a href="eventemployee.do"><input type="submit" value="Employee assign page"/></a>
</div>
</body>
</html>