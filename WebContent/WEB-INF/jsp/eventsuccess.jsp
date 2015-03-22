<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event success</title>
<link rel="stylesheet" href="normalize.css">

</head>
<body><center>
<h1>Event is created successfully</h1>
<div>
<table><tr>
<td><label for="eventname"><h3>Event name</h3></label></td>
<td>${EventName}</td>
</tr><br>
<tr>
<td><label for="date"><h3>Date</h3></label></td>
<td>${ndate}</td></tr><br>
<td><label for="time"><h3>Time</h3></label></td>
<td>${ntime}</td>
</tr><br>
<td><label for="returndate"><h3>Return Date</h3></label></td>
<td>${returndate}</td>
</tr><br>
<td><label for="rtime"><h3>Return Time</h3></label></td>
<td>${rtime}</td>
</tr><br>
<tr><td><label for="place"><h3>Place</h3></label></td>
<td>${place}</td>
</tr><br>
<td><label for="noprodreq"><h3>No of products required</h3></label></td>
<td>${nopreq}</td>
</tr><br>
<td><label for="Products"><h3>Products</h3></label></td>
<td>${products}</td>
</tr><br>
</table>
<a href="eventcreation.do"><input type="submit" value="Event creation page"/></a>

</div>
</center>
</body>
</html>