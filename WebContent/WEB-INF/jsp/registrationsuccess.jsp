<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Success</title>
<link rel="stylesheet" href="normalize.css">


</head>
<body><div><center>
<h1>Thank you User .</h1>
<br>
<h1>You registration has been completed.</h1>
<table id="customers">
<tr>
<td><label for="empid"><h3>Employee id:</h3></label></td>
<td><h3>${empid}</h3></td>
</tr><br>
<td><label for="email"><h3>Your Username:</h3></label></td>
<td><h3>${Email}</h3></td>
</tr><br>
<td><label for="firstname"><h3>First Name:</h3></label></td>
<td><h3>${FirstName}</h3></td>
</tr><br>
<td><label for="lastname"><h3>Last Name:</h3></label></td>
<td><h3>${LastName}</h3></td>
</tr><br>
<td><label for="email"><h3>Email:</h3></label></td>
<td><h3>${Email}</h3></td>
</tr><br>
<td><label for="password"><h3>Password:</h3></label></td>
<td><h3>${Password}</h3></td>
</tr>
<tr>
<td>
<a href="registration.do">Click here to do another Register</a></td></tr>
</table></center>
</div>
</body>
</html>