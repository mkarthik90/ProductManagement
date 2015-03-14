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
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect1.css"
	type="text/css">
<script type="text/javascript" src="js/bootstrap-multiselect1.js"></script>
<link rel="stylesheet" href="normalize.css">
<script type="text/javascript">
$(document).ready(function() {
$('#demo').multiselect();
});
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#products').multiselect();
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#products1').multiselect();
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#products2').multiselect();
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#products3').multiselect();
    });
</script>

<script>
function showmicList() {
	
	var InvForm = document.forms.eventcreationform;
    var micVal = "";
    var x = 0;
    for (x=0;x<InvForm.mic.length;x++)
        {
           if(InvForm.mic[x].selected)
           {
            //alert(InvForm.kb[x].value);
            micVal = InvForm.mic[x].value + "," + micVal ;
           }
        }
        alert(micVal);
        
        	
	var request; 
   
    	var url="getmicQuantity.jsp?count="+micVal;  
    	
    		if(window.XMLHttpRequest){  
    		request=new XMLHttpRequest(); 
    		//alert(2);
    		}  
    		else if(window.ActiveXObject){  
    		request=new ActiveXObject("Microsoft.XMLHTTP");
    		//alert(3);
    		}  
    		  
    		try{  
    			//alert(4);
    		request.onreadystatechange=function(){
        		if(request.readyState==4){  
        		var val=request.responseText;
        		//alert(request.responseText);
        		document.getElementById('micvalues').innerHTML=val;
        		
        		}
    		}
    		request.open("GET",url,true);  
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>
<script>
function showprojectorList() {
	var InvForm = document.forms.eventcreationform;
    var projectorVal = "";
    
    var x = 0;
    for (x=0;x<InvForm.projector.length;x++)
        {
           if(InvForm.projector[x].selected)
           {
            //alert(InvForm.kb[x].value);
            projectorVal = InvForm.projector[x].value + "," + projectorVal ;
           }
        }
        alert("proj"+projectorVal);
        
	
	var request; 
   
    	var url="getprojectorQuantity.jsp?count="+projectorVal;  
    	
    		if(window.XMLHttpRequest){  
    		request=new XMLHttpRequest(); 
    		//alert(2);
    		}  
    		else if(window.ActiveXObject){  
    		request=new ActiveXObject("Microsoft.XMLHTTP");
    		//alert(3);
    		}  
    		  
    		try{  
    			//alert(4);
    		request.onreadystatechange=function(){
        		if(request.readyState==4){  
        		var val=request.responseText;
        		//alert(request.responseText);
        		document.getElementById('projectorvalues').innerHTML=val;
        		
        		}
    		}
    		request.open("GET",url,true);  
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>
<script>
function showledList() {
	var InvForm = document.forms.eventcreationform;
    var ledVal = "";
    var x = 0;
    for (x=0;x<InvForm.led.length;x++)
        {
           if(InvForm.led[x].selected)
           {
            //alert(InvForm.kb[x].value);
            ledVal = InvForm.led[x].value + "," + ledVal ;
           }
        }
        alert("led"+ledVal);
	
	
	var request; 
  
    	var url="getledQuantity.jsp?count="+ledVal;  
    	
    		if(window.XMLHttpRequest){  
    		request=new XMLHttpRequest(); 
    		//alert(2);
    		}  
    		else if(window.ActiveXObject){  
    		request=new ActiveXObject("Microsoft.XMLHTTP");
    		//alert(3);
    		}  
    		  
    		try{  
    			//alert(4);
    		request.onreadystatechange=function(){
        		if(request.readyState==4){  
        		var val=request.responseText;
        		//alert(request.responseText);
        		document.getElementById('ledvalues').innerHTML=val;
        		
        		}
    		}
    		request.open("GET",url,true);  
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>

<script>
function showspeakerList(str) {
	var InvForm = document.forms.eventcreationform;
    var speakerVal = "";
    var x = 0;
    for (x=0;x<InvForm.speaker.length;x++)
        {
           if(InvForm.speaker[x].selected)
           {
            
        	   speakerVal = InvForm.speaker[x].value + "," + speakerVal ;
           }
        }
        alert("speaker"+speakerVal);
	
	
	var request; 
   
    	var url="getspeakerQuantity.jsp?count="+speakerVal;  
    	
    		if(window.XMLHttpRequest){  
    		request=new XMLHttpRequest(); 
    		//alert(2);
    		}  
    		else if(window.ActiveXObject){  
    		request=new ActiveXObject("Microsoft.XMLHTTP");
    		//alert(3);
    		}  
    		  
    		try{  
    			//alert(4);
    		request.onreadystatechange=function(){
        		if(request.readyState==4){  
        		var val=request.responseText;
        		//alert(request.responseText);
        		document.getElementById('speakervalues').innerHTML=val;
        		
        		}
    		}
    		request.open("GET",url,true);  
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>


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
<c:forEach var="j" begin="01" end="31"><form:option value="${j}" label="${j}" /></c:forEach>
</form:select>
<form:select path="year">
<c:forEach var="j" begin="2005" end="2020"><form:option value="${j}" label="${j}" /></c:forEach>

</form:select>  
</td>
</tr>
</fieldset>
<tr><td><label for="eventtime">Event Time :</label></td><td>
<form:select path="Hour">
<c:forEach var="j" begin="01" end="12"><form:option value="${j}" label="${j}" /></c:forEach>
</form:select>
<form:select path="Minutes">
<c:forEach var="j" begin="00" end="60"><form:option value="${j}" label="${j}" /></c:forEach>
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
<tr>
<td><label for="products">Select the products:</label></td>
<td>
<ul class="makeMenu" style = "border:1px solid black;" >
  <li> Mics
    <ul>
      <form:select path="mic" multiple="multiple" id="products" >
      <c:forEach var="mics" items="${productslist}">
      <form:option value="${mics.mic}" label="${mics.mic}" />
				
			</c:forEach>

</form:select>

    </ul>
  </li>
  <li>Speaker
    <ul>
      <form:select path="speaker" multiple="multiple"  id="products1">
      <c:forEach var="speakers" items="${productslist}">
      <form:option value="${speakers.speaker}" label="${speakers.speaker}" />
				
			</c:forEach>

</form:select>
    </ul>
  </li>
  <li>Projector
    <ul>
      <form:select path="projector" multiple="multiple" id="products2">
       <c:forEach var="projectors" items="${productslist}">
      <form:option value="${projectors.projector}" label="${projectors.projector}" />
				
			</c:forEach>

</form:select>
    </ul>
  </li>
  <li>LED
    <ul>
      <form:select path="led" multiple="multiple" id="products3">
      <c:forEach var="leds" items="${productslist}">
      <form:option value="${leds.led}" label="${leds.led}" />
				
			</c:forEach>

</form:select>
    </ul>
  </li>
</ul>
<br><br></td></tr><tr><td></td><td>
<input type="button" value="Add" onClick="showmicList();showspeakerList();showprojectorList();showledList()"/></td>
</tr>
<tr>
<td><label for="Quantity">Select the Quantity:</label></td><td></td><td></td></tr>

<tr>
<td id="micvalues">

</td></tr><tr>
<td id="speakervalues">

</td>
</tr>
<tr><td id="projectorvalues">

</td></tr><tr>
<td id="ledvalues">

</td>
</tr>
</table>



<input type="submit" value="Create"/>
</form:form>					
<form:form name="eventcreationback" action="eventpage.do">
<input type="submit" value="Back"/>
</form:form>
<select name="products" path="products" form="eventcreationform"><c:forEach var="j" begin="0" end="5"><option value="${j}" label="${j}" /></c:forEach></select>		

</center>
</div>
</body>
</html>