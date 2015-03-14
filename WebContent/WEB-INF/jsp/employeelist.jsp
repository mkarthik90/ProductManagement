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
<title>Employee Search</title>
<link rel="stylesheet" href="normalize.css">
<script>
function showUser(str) {
	//alert(1);
	document.getElementById('employee').value="";
	var request; 
    	var v=document.employeesearch.empid.value;  
    //alert("Emp id is"+v);
    	var url="get.jsp?count="+v;  
    	var url1="getTableselection.jsp?count="+v;
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
        		
        		document.getElementById('employeetablevalues').innerHTML=val;
        		}
    		}
    		
    		
    		request.open("GET",url,true); 
    		
    		//alert(6)
    		request.open("GET",url1,true);
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
	document.getElementById('employee').value="";
	document.getElementById('empid').value=0;
	var request; 
    	
    //alert("Emp id is"+v);
    	var url="getTable.jsp?count="+str;  
    	
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
        		document.getElementById('employeetablevalues').innerHTML=val;
        		
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
function showUsername(str) {
	//alert(1);
	//str="*";
	document.getElementById('empid').value=0;
	str=document.employeesearch.employee.value;
	var request; 
   // alert(str);	
    //alert("Emp id is"+v);
    	var url="getuserbyName.jsp?count="+str;  
    	
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
        		document.getElementById('employeetablevalues').innerHTML=val;
        		
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
            	 if (document.employeesearch.empid.value == "0" && document.employeesearch.employee.value == "" )
              {
            	     alert( "Please complete atleast one field " )
            	     document.employeesearch.empid.focus()
            	     return false;
            	   }
              
              
             
              else {
                   // document.employeesearch.submit()
                }
            }
            
  </script>     
<script>
$( function () {
$( "#datepicker" ).datepicker();
});
</script>
</head>
<body>
<div>
<table>
<tr><td>
<form:form name="employeesearch" action=""
		commandName="eventCommand" method="POST" ONSUBMIT="return checker()">

<h1>Employee Search</h1>
<table>
<tr>
				<td><label for="selempid">Select the employee id:</label></td>
				<td><form:select path="empid" onchange="showUser()" >
						<form:option value="0" label="Select" />
						<form:options items="${employeelist}" itemvalue="empid"
							itemLabel="empid" />
					</form:select></td>
</tr>
			<tr><td>(OR)</td></tr>
			<tr>
				<td><label for="selemp">Enter the employee:</label></td>
				<td>
			 <form:input path="employee" id="employee" onkeyUp="showUsername()"/></td></tr>
<tr><td>(OR)</td> </tr>
<tr><td><input type="button" value="List All Employee" onClick="showTable()"/></td> 
<td></td></tr>


</table>
</td>
<td>
<table border="1" align="center" >
<thead>
<tr>
<th align="center">Empid</th>
<th align="center">Firstname</th>
<th align="center">Lastname</th>
<th align="center">Username</th>
<th align="center">Email</th>
</tr>
</thead>
<tbody id="employeetablevalues">

</tbody>
</table>
</form:form>
<form:form name="employeeback" action="registrationPage.do">
<input type="submit" value="Back"/>
</form:form>
</td></tr>
</table>
</div>
</body>
</html>