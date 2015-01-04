<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Registration Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
       
        <link rel="shortcut icon" href="../favicon.ico"> 
       <!--  <link rel="stylesheet" type="text/css" href="style.css" /> -->
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />

<script type="text/javascript">
function validate()
{
var Username = document.getElementById("Username");
var Password = document.getElementById("Password");
var Email=document.getElementById("Email");
var FirstName=document.getElementById("FirstName");
var LastName=document.getElementById("LastName");
var EmpId=document.getElementById("EmpId");
var valid=true;
if(USername.value.length<=0 || Password.value.length<=0 || Email.value.length<=0 || FirstName.value.length<=0 || LastName.value.length<=0 || EmpId.value.length<=0)
	{
	alert("Don't leave the field Empty");
	valid = false;
	}
return valid;
};
</script>


</head>
<body>
<center><h1>Registration Page</h1>

<form:form name="Registrationform" action="registrationsuccess.do" commandName="Regcommand" method="POST" modelAttribute="Regcommand">
<table>
<tr>
<td><h3>Username</h3></td><td><form:input path="Username" id="Username"/><br/></td></tr>
<tr><td><h3>Firstname</h3></td><td><form:input path="FirstName" id="FirstName"/><br/></td></tr>
<tr><td><h3>Lastname</h3></td><td><form:input path="LastName" id="LastName"/><br/></td></tr>
<tr><td><h3>Email</h3></td><td><form:input path="Email" id="Email"/><br/></td></tr>
<tr><td><h3>Employee ID</h3></td><td><form:input path="EmpId" id="EmpId"/><br/></td></tr>
<tr><td><h3>Password</h3></td><td><form:password path="Password" id="Password"/><br/></td></tr>

<tr><td></td><td><input type="submit" value="Register"/></td></tr>
</table>
</center>
</form:form>
</body>
</html>