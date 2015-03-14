<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Assigning Employee for the Event</title>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect.css"
	type="text/css">
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
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
 <SCRIPT LANGUAGE="JavaScript">
           
            function checker()
            {
               
             
              //  var result2 = document.form1.text1.value.match(regExp2)
              //  if (result1 == null && result2 == null) {
            	  if( document.eventemployeeform.Eventname.value.trim() == "0" )
   {
     alert( "Please Select the Event" )
     document.eventemployeeform.Eventname.focus()
     return false;
   }
                
              else if (document.eventemployeeform.empid.value.trim() == "0" )
              {
            	     alert( "Please Select the Employee Id" )
            	     document.eventemployeeform.empid.focus()
            	     return false;
            	   }
              else if (document.eventemployeeform.employee.value.trim() == "0" )
              {
            	     alert( "Please Select the Employee" )
            	     document.eventemployeeform.employee.focus()
            	     return false;
            	   }
              else if (document.eventemployeeform.Products.value.trim() == "" )
              {
         	     alert( "Please Select the Products" )
         	    document.eventemployeeform.Products.focus()
         	     return false;
         	   }
             
              else {
                    document.eventemployeeform.submit()
                }
            }
            
        </SCRIPT>
<script>
function showUser(str) {
	var request; 
    	var v=document.eventemployeeform.empid.value;  
    //	alert("Emp id is"+v);
    	var url="get.jsp?count="+v;  
    	
    		if(window.XMLHttpRequest){  
    		request=new XMLHttpRequest();  
    		}  
    		else if(window.ActiveXObject){  
    		request=new ActiveXObject("Microsoft.XMLHTTP");  
    		}  
    		  
    		try{  
    		request.onreadystatechange=function(){
        		if(request.readyState==4){  
        		var val=request.responseText;
        		document.getElementById('employee').value=val;
        		}
    		}
    		request.open("GET",url,true);  
    		request.send();  
    		}catch(e){
    			alert("Unable to connect to server");
    		}  
		}
</script>
<!--
<script language="javascript" type="text/javascript">  
 var xmlHttp  
 var xmlHttp
 function showState(str){ 
if (typeof XMLHttpRequest != "undefined"){
   xmlHttp= new XMLHttpRequest();
       }
       else if (window.ActiveXObject){
   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
       }
if (xmlHttp==null){
    alert ("Browser does not support XMLHTTP Request")
return
} 
var url="getidnew.jsp";
url += "?q=" +str;
xmlHttp.onreadystatechange = stateChange;
xmlHttp.open("GET", url, true);
xmlHttp.send(null);
}
 function stateChange(){   
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
 document.getElementById("employeename").innerHTML=xmlHttp.responseText;  
 }   
 }   
 </script>  -->
<script language="javascript" type="text/javascript">  
 var xmlHttp  

 function showState(str){ 
if (typeof XMLHttpRequest != "undefined"){
   xmlHttp= new XMLHttpRequest();
       }
       else if (window.ActiveXObject){
   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
       }
if (xmlHttp==null){
    alert ("Browser does not support XMLHTTP Request")
return
} 
var url="get.jsp";
url += "?count=" +str;
xmlHttp.onreadystatechange = stateChange;
xmlHttp.open("GET", url, true);
xmlHttp.send(null);
}
 function stateChange(){   
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
 document.getElementById("employeename").value=xmlHttp.responseText;  
 }   
 }   
 </script>
 <script language="javascript" type="text/javascript">  
 var xmlHttp  

 function dropvalue(str){ 
	 alert(str);
 alert(1)
if (typeof XMLHttpRequest != "undefined")
{
   xmlHttp= new XMLHttpRequest();
       }
       else if (window.ActiveXObject){
   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
       }
if (xmlHttp==null){
    alert ("Browser does not support XMLHTTP Request")
return
} 
var url="get.jsp";
url += "?count=" +str;
String rr=document.getElementById("Products").value;
alert(rr + "asasa");
//xmlHttp.onreadystatechange = stateChange;
//xmlHttp.open("GET", url, true);
//xmlHttp.send(null);
}
 
 </script>
</head>
<body>
<div>

	<form:form name="eventemployeeform" action="eventassign.do"
		commandName="eventCommand" method="POST" ONSUBMIT="return checker()">
		<table>
			<tr>
				<td><label for="selevent">Select the event:</label></td>
				<td><form:select path="Eventname">
						<form:option value="0" label="Select" />
						<form:options items="${eventlist}" itemValue="Eventname"
							itemLabel="Eventname" />
					</form:select><br /></td>
			</tr>
			<tr>
				<td><label for="selempid">Select the employee id:</label></td>
				<td><form:select path="empid" onchange="showUser()" readonly="true">
						<form:option value="0" label="Select" />
						<form:options items="${employeelist }" itemvalue="empid"
							itemLabel="empid" />
					</form:select></td>
			</tr>
			<tr>
				<td><label for="selemp">Select the employee:</label></td>
				<td>
					<!--<form:select path="Employee">

<form:options items="${employeelist}" itemValue="employee" itemLabel="employee"/>

</form:select> </td></tr> --> <form:input path="employee" id="employee" />
			<tr>
				<td><label for="selprod">Select the products:</label></td>
				<td><form:select path="Products" multiple="multiple"
						id="products" >

						<form:options items="${employeeList1}" itemValue="Products"
							itemLabel="Products" id="Products" />
					</form:select><br /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>

</form:form>
<form:form name="employeeassignback" action="eventpage.do">
<input type="submit" value="Back"/>
</form:form>

</div>
</body>
</html>