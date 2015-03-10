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
<center>
<h1>De-Registration page</h1>
<form:form name="deregistrationForm" action="confirmation.do" commandName="deregistrCommand" method="POST">



<h3><font color="blue">Select the Employee to deregister</font></h3>
<table id="customers" >
<tr>
<td><label for="Select"><h3>Select</h3></label></td>
<td><label for="Empid"><h3>Employee Id</h3></label></td>
<td><label for="Empname"><h3>Employee Name</h3></label></td>
</tr>
<c:forEach var="user" items="${emplist}">
                <tr>
                    <td><INPUT TYPE="radio" path="Empid" NAME="Empid" VALUE="${user.empid}" ></td>
                    <td><c:out value="${user.empid}" /></td>
                    <td><c:out value="${user.userName}" /></td>
                                        
                </tr>
            </c:forEach>


</table>



             
            <BR>
<input type="submit" value="DeRegister"/>
</form:form>
<form:form name="deregistrationForm4" action="registrationPage.do">
<input type="submit" value="Back"/>
</form:form>
</center>
</div>
</body>
</html>