<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.Date" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Search</title>
<script>
function showeventbyid(str) {
	//alert(1);
	document.getElementById('event').value="";
	var request; 
    	var v=document.eventsearch.Eventname.value; 
    	v=document.getElementById('Eventname').value;
    //alert("Emp id is"+v);
    	var url="geteventbyName.jsp?count="+v;  
    	//var url1="getTableselection.jsp?count="+v;
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
    			//alert(5)
        		if(request.readyState==4){  
        		
        			var val=request.responseText;
        		//document.getElementById('employee').value=val;
        		
        		document.getElementById('eventtablevalues').innerHTML=val;
        		}
    		}
    		
    		
    		request.open("GET",url,true); 
    		
    		//alert(6)
    		//request.open("GET",url1,true);
    		//var val=request.responseText;
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>
<script>
function showTable(str) {
	//alert(1);
	str="*";
	//alert(str)
	document.getElementById('event').value="";
	document.getElementById('Eventname').value=0;
	var request; 
    	
    //alert("Emp id is"+v);
    	var url="getTableEvent.jsp?count="+str;  
    	
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
        		document.getElementById('eventtablevalues').innerHTML=val;
        		
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
function showEvent(str) {
	//alert(1);
	//str="*";
	//document.getElementById('Eventname').value=0;
	str=document.eventsearch.event.value;
	var request; 
   // alert(str);	
    //alert("Emp id is"+v);
    	var url="geteventbyName.jsp?count="+str;  
    	
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
        		document.getElementById('eventtablevalues').innerHTML=val;
        		
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
               
             
              //  var result2 = document.form1.text1.value.match(regExp2)
              //  if (result1 == null && result2 == null) {
            	 if (document.eventsearch.empid.value == "0" && document.eventsearch.employee.value == "" )
              {
            	     alert( "Please complete atleast one field " )
            	     document.eventsearch.empid.focus()
            	     return false;
            	   }
              
              
             
              else {
                   // document.eventsearch.submit()
                }
            }
            
       

</script>
<script>
function showeventbydate(str) {
	//alert(1);
	document.getElementById('event').value="";
	var request; 
    	var v=document.eventsearch.Eventname.value; 
    	v=document.getElementById('eventdate').value;
    //alert("Emp id is"+v);
    	var url="geteventbyDate.jsp?count="+v;  
    	//var url1="getTableselection.jsp?count="+v;
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
    			//alert(5)
        		if(request.readyState==4){  
        		
        			var val=request.responseText;
        		//document.getElementById('employee').value=val;
        		
        		document.getElementById('eventtablevalues').innerHTML=val;
        		}
    		}
    		
    		
    		request.open("GET",url,true); 
    		
    		//alert(6)
    		//request.open("GET",url1,true);
    		//var val=request.responseText;
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>
<script>
function showeventbydatebtw(str) {
	//alert(1);
	document.getElementById('event').value="";
	var request; 
    	var v=document.eventsearch.Eventname.value; 
    	var start=document.getElementById('eventdatefrom').value;
    	var end=document.getElementById('eventdateend').value;
    //alert("Emp id is"+v);
    	var url="geteventbyDatebtw.jsp?start="+start+"&end="+end; 
    	//alert(url)
    	//var url1="getTableselection.jsp?count="+v;
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
    			//alert(5)
        		if(request.readyState==4){  
        		
        			var val=request.responseText;
        		//document.getElementById('employee').value=val;
        		
        		document.getElementById('eventtablevalues').innerHTML=val;
        		}
    		}
    		
    		
    		request.open("GET",url,true); 
    		
    		//alert(6)
    		//request.open("GET",url1,true);
    		//var val=request.responseText;
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>
<script>
function showeventbydatetoday(str) {
	//alert(1);
	document.getElementById('event').value="";
	var request; 
    	var v=document.eventsearch.Eventname.value; 
    	v=document.getElementById('eventdate').value;
//alert(2);
    	//DateFormat dff=new SimpleDateFormat("yyyy-MM-dd");
    	//String v=dff.format(new Date());
    	//alert(3);
    	
    //	alert(v);
    //alert("Emp id is"+v);
    	var url="geteventbyDatetoday.jsp?count="+v;  
    	//var url1="getTableselection.jsp?count="+v;
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
    			//alert(5)
        		if(request.readyState==4){  
        		
        			var val=request.responseText;
        		//document.getElementById('employee').value=val;
        		
        		document.getElementById('eventtablevalues').innerHTML=val;
        		}
    		}
    		
    		
    		request.open("GET",url,true); 
    		
    		//alert(6)
    		//request.open("GET",url1,true);
    		//var val=request.responseText;
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>
</head>
<body>
<form:form name="eventsearch" action=""
		commandName="eventCommand" method="POST" ONSUBMIT="return checker()">

<h1>Event Search</h1>
<table>
<tr>
				<td><label for="selempid">Select the event name:</label></td>
				<td><form:select path="Eventname" id="Eventname" onchange="showeventbyid()">
						<form:option value="0" label="Select" />
						<form:options items="${eventlist}" itemValue="Eventname"
							itemLabel="Eventname" />
					</form:select></td>
</tr>
			<tr><td>(OR)</td></tr>
			<tr>
				<td><label for="selemp">Enter the event name:</label></td>
				<td>
			 <form:input path="Eventname" id="event" onkeyUp="showEvent()"/></td></tr>
<tr><td>(OR)</td> </tr>
<tr><td><input type="button" value="List All Events" onClick="showTable()"/></td> 
<td></td></tr>
			<tr>
				<td><label for="selemp">Enter the event date:(yyyy-mm-dd)</label></td>
				<td>
			 <form:input path="Eventname" id="eventdate" onChange="showeventbydate()"/></td></tr>
<tr><td>(OR)</td> </tr>
<tr><td><label for="selemp">Event date from:(yyyy-mm-dd)</label></td>
				<td>
			 <form:input path="Eventname" id="eventdatefrom" /></td>
			 <td><label for="selemp">To:(yyyy-mm-dd)</label></td>
			 <td><form:input path="Eventname" id="eventdateend"/></td> 
			 <td><input type="button" value="Get Events" onClick="showeventbydatebtw()" /></td></tr>
<tr><td>(OR)</td> </tr>
<tr>
<td><input type="button" value="Get Today's Events" onClick="showeventbydatetoday()" /></td></tr>
</table>

<table border="1" align="center" >
<thead>
<tr>
<th align="center">Eventid</th>
<th align="center">Eventname</th>
<th align="center">Products</th>
<th align="center">Event Date</th>
<th align="center">Products Return Date</th>
</tr>
</thead>
<tbody id="eventtablevalues">

</tbody>
</table>
</form:form>
</body>
</html>