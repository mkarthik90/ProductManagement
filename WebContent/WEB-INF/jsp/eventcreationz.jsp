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
<title>Event creation</title>
<link rel="stylesheet" href="normalize.css">



<!-- For checkboxe in the list -->
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css"> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css">
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
 <!-- 
<script type="text/javascript">
$(document).ready(function() {
$('#demo').multiselect();
$('#products1').multiselect();
$('#products2').multiselect();
$('#products3').multiselect();
});
</script>

 -->

<SCRIPT LANGUAGE="JavaScript">
           
            function checker()
            {
            	
              var noprod = document.eventcreationform.nopreq
              var place=document.evetncreationform.place
              //  var result2 = document.form1.text1.value.match(regExp2)
              //  if (result1 == null && result2 == null) {
            	  if (document.eventcreationform.Eventname.value.trim() == ""){
            		  alert("Please enter the 'Event name'")
                      document.eventcreationform.Eventname.focus()
                      return false
            	  }
             else if (place.value.trim() == "") {
                      alert("Please enter the 'place'")
                      place.focus()
                      return false
                  } 
              else if (noprod.value.trim() == "") {
                    alert("Please enter the 'No.of products required'")
                    noprod.focus()
                    return false
                } 
              else if (isNaN(noprod.value)) {
                  alert("Please enter 'No.of products required' in number")
                  noprod.focus()
                  return false
              }
              else if (noprod.value.trim() == 0) {
                  alert("Please enter the 'No.of products required'")
                  noprod.focus()
                  return false
              }
              else {
                    document.eventcreationform.submit()
                }
           }
            
        </SCRIPT>
      <script type="text/javascript">
      var x=[];
        function OnSelectionChange (select) {
            var selectedOption = select.options[select.selectedIndex];
            
            x.push(selectedOption.value);
           // var x=selectedOption.value
            var v="testing service";
            alert ("The selected option is " + x);
            decodeURIComponent($.param({ 'item[]': itemArr }));
            document.getElementById("print-here").innerHTML = v;
        }
    </script>
        
</head>
<body>
<div>
<center>
		

<form:form name="eventcreationform" action="create.do" commandName="eventcreateCommand" method="POST" ONSUBMIT="return checker()">
<h1>Event creation</h1>
<c:choose>

<c:when test="${eventcreateCommand.eventStatus == false}">
	<h3><font color="blue">Duplication occurs</font></h3>
	<h4><font color="red">There is an record for the same details</font></h4>
</c:when>

</c:choose>
<table>
<tr>
<td><label for="eventname">Event Name :</label></td>
<td><form:input path="Eventname" maxlength="30" /></td>
</tr><br>
<fieldset>
<tr><td><label for="eventdate">Event Date :</label></td><td>
<form:select path="month" >
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
<form:select path="day">
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
<form:select path="year">
<form:option value="2005" label="2005" />
<form:option value="2006" label="2006" />
<form:option value="2007" label="2007" />
<form:option value="2008" label="2008" />
<form:option value="2009" label="2009" />
<form:option value="2010" label="2010" />
<form:option value="2011" label="2011" />
<form:option value="2012" label="2012" />
<form:option value="2013" label="2013" />
<form:option value="2014" label="2014" />
<form:option value="2015" label="2015" />
<form:option value="2016" label="2016" />
<form:option value="2017" label="2017" />
<form:option value="2018" label="2018" />
<form:option value="2019" label="2019" />
<form:option value="2020" label="2020" />
</form:select>  
</td>
</tr>
</fieldset>
<tr><td><label for="eventtime">Event Time :</label></td><td>
<form:select path="Hour">
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
</form:select>
<form:select path="Minutes">
<form:option value="00" label="00" />
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
<form:option value="32" label="32" />
<form:option value="33" label="33" />
<form:option value="34" label="34" />
<form:option value="35" label="35" />
<form:option value="36" label="36" />
<form:option value="37" label="37" />
<form:option value="38" label="38" />
<form:option value="39" label="39" />
<form:option value="40" label="40" />
<form:option value="41" label="41" />
<form:option value="42" label="42" />
<form:option value="43" label="43" />
<form:option value="44" label="44" />
<form:option value="45" label="45" />
<form:option value="46" label="46" />
<form:option value="47" label="47" />
<form:option value="48" label="48" />
<form:option value="49" label="49" />
<form:option value="50" label="50" />
<form:option value="51" label="51" />
<form:option value="52" label="52" />
<form:option value="53" label="53" />
<form:option value="54" label="54" />
<form:option value="55" label="55" />
<form:option value="56" label="56" />
<form:option value="57" label="57" />
<form:option value="58" label="58" />
<form:option value="59" label="59" />
<form:option value="60" label="60" />
</form:select>
<form:select path="ampm">
<form:option value="AM" label="AM"/>
<form:option value="PM" label="PM"/>
</form:select>
 
</td>
</tr>
<tr>
<td><label for="place">Location:</label></td>
<td><form:input path="place" maxlength="30" /></td>
</tr><br>
<tr>
<td><label for="nofprodreq">Number of products required:</label></td>
<td><form:input path="nopreq" maxlength="5" /></td>
</tr>
</table>
<ul class="makeMenu" >
  <li> Mics
    <ul>
      <form:select path="mic" multiple="multiple" id="demo" onchange="OnSelectionChange (mic)" target="_parent._top"
  onmouseclick="this.focus()"
      >
      <c:forEach var="mics" items="${productslist}">
      <form:option value="${mics.mic}" label="${mics.mic}" />
				
			</c:forEach>

</form:select>
    </ul>
  </li>
  <li>Speaker
    <ul>
      <form:select path="speaker" multiple="multiple"  id="products1" onchange="OnSelectionChange (speaker)">
      <c:forEach var="speakers" items="${productslist}">
      <form:option value="${speakers.speaker}" label="${speakers.speaker}" />
				
			</c:forEach>

</form:select>
    </ul>
  </li>
  <li>Projector
    <ul>
      <form:select path="projector" multiple="multiple" id="products2" onchange="OnSelectionChange (projector)">
       <c:forEach var="projectors" items="${productslist}">
      <form:option value="${projectors.projector}" label="${projectors.projector}" />
				
			</c:forEach>

</form:select>
    </ul>
  </li>
  <li>LED
    <ul>
      <form:select path="led" multiple="multiple" id="products3" onchange="OnSelectionChange (led)">
      <c:forEach var="leds" items="${productslist}">
      <form:option value="${leds.led}" label="${leds.led}" />
				
			</c:forEach>

</form:select>
    </ul>
  </li>
</ul>
<br><br>
<div id="print-here">

</div>
test:
<% String st="<script>document.writeln(v)</script>";
out.println(st); %>
<input type="submit" value="Create"/>
</form:form>					
<form:form name="eventcreationback" action="eventpage.do">
<input type="submit" value="Back"/>
</form:form>		

</center>
</div>
</body>
</html>