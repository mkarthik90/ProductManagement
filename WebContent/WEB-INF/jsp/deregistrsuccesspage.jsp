<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Deregistration sucess</title>
<link rel="stylesheet" href="normalize.css">

</head>
<body>
<div>
<center>
<label for="title"><h1>The employee is successfully removed from the list</h1></label>

<table>
	<tr>
<td><label for="empid">Employee Id :</label></td>
<td><h3>${empid}</h3></td>
</tr><br><br>
<tr>
<td><label for="username">UserName :</label></td>
<td><h3>${username}</h3></td>
</tr><br><br>
</table>
<a href="deregistration.do"><input type="submit" value="de-registration"/></a>
</center>
</div>
</body>
</html>