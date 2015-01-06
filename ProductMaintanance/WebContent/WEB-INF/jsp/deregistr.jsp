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
<script type="text/javascript">

function validate()
{
 var empid=document.deregistrationForm.empid.value;
 var username=document.deregistrationForm.username.value;
   if(empid== "" ||empid==null)
   {
     alert( "Please provide your Empid!" );
   //  document.deregistrationForm.empid.focus() ;
     return false;
   }
   else if( username== "" ||username==null)
   {
     alert( "Please provide your Username!" );
    // document.deregistrationForm.username.focus() ;
     return false;
   }
   
 return( true );
}
</script>

</head>
<body>
<center>
<form:form name="deregistrationForm" action="deregistr.do" commandName="deregistrCommand" method="POST" onsubmit="return validate()">
<c:if test="${deregistrCommand.deregistrStatus == false}">
	<h2><font color="red">There is no employee </font></h2>
	<h2><font color="red">check Employee Id and Emloyee name </font></h2>
</c:if>	
<br>
<br>
<tr>
<td>Employee Id </td>
<td><form:input path="Empid" name="empid" maxlength="5"/></td>
</tr><br><br>
<tr>
<td>User Name </td>
<td><form:input path="userName" name="username" maxlength="20"/></td>
</tr>
<br>
<br><br>
<input type="submit" name="submit" value="DeRegister"/>
</form:form>
</center>
</body>
</html>