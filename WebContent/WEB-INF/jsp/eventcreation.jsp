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
<h1>Event creation</h1>
<form:form name="eventcreationform" action="create.do" commandName="eventcreateCommand" method="POST">
<c:if test="${eventcreateCommand.eventStatus == false}">
	<h3><font color="blue">Duplication occurs</font></h3>
	<h4><font color="red">There is an record for the same details</font></h4>
</c:if>	
<table>
<tr>
<td><h3>Employee ID </h3></td>
<td>
<form:select path="Empid">
<form:option value="NONE" label="Select" />
<form:options items="${employeelist}" itemvalue="empid" itemLabel="empid" />
</form:select></td>
</tr><br><br>
<tr>
<td><h3>Event Name </h3></td>
<td><form:input path="Eventname" maxlength="30" /></td>
</tr><br><br>
<tr><td><h3>Event Date</h3></td><td><form:select path="day">
<form:option value="01" label="01" />
<form:option value="02" label="02" />
<form:option value="03" label="03" />
<form:option value="04" label="04" />
<form:option value="05" label="05" />
<form:option value="06" label="06" />
<form:option value="07" label="07" />
<form:option value="08" label="08" />
<form:option value="09" label="09" />
<form:option value="10" label="10" />
<form:option value="11" label="11" />
<form:option value="12" label="12" />
<form:option value="13" label="13" />
<form:option value="14" label="14" />
<form:option value="15" label="15" />
<form:option value="16" label="16" />
<form:option value="17" label="17" />
<form:option value="18" label="18" />
<form:option value="19" label="19" />
<form:option value="20" label="20" />
<form:option value="21" label="21" />
<form:option value="22" label="22" />
<form:option value="23" label="23" />
<form:option value="24" label="24" />
<form:option value="25" label="25" />
<form:option value="26" label="26" />
<form:option value="27" label="27" />
<form:option value="28" label="28" />
<form:option value="29" label="29" />
<form:option value="30" label="30" />
<form:option value="31" label="31" />
</form:select>
<form:select path="month">
<form:option value="01" label="Jan" />
<form:option value="02" label="Feb" />
<form:option value="03" label="Mar" />
<form:option value="04" label="Apr" />
<form:option value="05" label="May" />
<form:option value="06" label="Jun" />
<form:option value="07" label="Jul" />
<form:option value="08" label="Aug" />
<form:option value="09" label="Sep" />
<form:option value="10" label="Oct" />
<form:option value="11" label="Nov" />
<form:option value="12" label="Dec" />
</form:select> 
year(yyyy)<form:input path="year"  maxlength="4" value="2015"/></td>
</tr>
<tr>
<td><h3>No. of products required</h3></td>
<td><form:input path="nopreq" maxlength="5" /></td>
</tr>
</table>
<br>
<br><br>
<input type="submit" value="Create"/>
</form:form>
</center>
</body>
</html>