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
<td><table border="0" cellspacing="0" >
<tr><td  align=left  >month   
<select name="month" >
<option value='01'>January</option>
<option value='02'>February</option>
<option value='03'>March</option>
<option value='04'>April</option>
<option value='05'>May</option>
<option value='06'>June</option>
<option value='07'>July</option>
<option value='08'>August</option>
<option value='09'>September</option>
<option value='10'>October</option>
<option value='11'>November</option>
<option value='12'>December</option>
</select>

</td><td  align=left  >Date<select name="dt" >
<option value='01'>01</option>
<option value='02'>02</option>
<option value='03'>03</option>
<option value='04'>04</option>
<option value='05'>05</option>
<option value='06'>06</option>
<option value='07'>07</option>
<option value='08'>08</option>
<option value='09'>09</option>
<option value='10'>10</option>
<option value='11'>11</option>
<option value='12'>12</option>
<option value='13'>13</option>
<option value='14'>14</option>
<option value='15'>15</option>
<option value='16'>16</option>
<option value='17'>17</option>
<option value='18'>18</option>
<option value='19'>19</option>
<option value='20'>20</option>
<option value='21'>21</option>
<option value='22'>22</option>
<option value='23'>23</option>
<option value='24'>24</option>
<option value='25'>25</option>
<option value='26'>26</option>
<option value='27'>27</option>
<option value='28'>28</option>
<option value='29'>29</option>
<option value='30'>30</option>
<option value='31'>31</option>
</select>


</td><td  align=left  >   
Year(yyyy)<input type=text name=year size=4 value=2005>
</table>
<form:input type="text" path="nDate"  maxlength="20" /></td>
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