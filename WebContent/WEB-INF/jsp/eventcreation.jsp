<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Event creation</title>
<script type="text/javascript" language="javascript">
  </script>

</head>
<body>
<center>
<form:form name="eventcreationform" action="create.do" commandName="eventcreateCommand" method="POST">
<c:if test="${eventcreateCommand.eventStatus == false}">
	<h2><font color="red">Duplication occurs</font></h2>
	<h2><font color="red">There is an record for the same details</font></h2>
</c:if>	
<br>
<br>
<tr>
<td>Event Name </td>
<td><form:input path="Eventname" maxlength="30" /></td>
</tr><br><br>
<tr>
<td>Event Date(DD/MM/YYYY)</td>
<td><form:input type="text" path="nDate"  maxlength="20" /></td>
</tr><br><br>
<tr>
<td>No. of products required</td>
<td><form:input path="nopreq" maxlength="5" /></td>
</tr>
<br>
<br><br>
<input type="submit" value="Create"/>
</form:form>
</center>
</body>
</html>