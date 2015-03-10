<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css"> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css">
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
<!-- <link rel="stylesheet" href="normalize.css"> -->
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
            	  if( document.eventemployeeform.Eventname.value == "0" )
   {
     alert( "Please Select the Event" )
     document.eventemployeeform.Eventname.focus()
     return false;
   }
                
              else if (document.eventemployeeform.empid.value == "0" )
              {
            	     alert( "Please Select the Employee Id" )
            	     document.eventemployeeform.empid.focus()
            	     return false;
            	   }
              else if (document.eventemployeeform.employee.value == "0" )
              {
            	     alert( "Please Select the Employee" )
            	     document.eventemployeeform.employee.focus()
            	     return false;
            	   }
              else if (document.eventemployeeform.Products.value == "" )
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
	
    if (str == "") {
        document.getElementById("employeename").innerHTML = "";
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
               <!-- document.getElementById("txtHint").innerHTML = xmlhttp.responseText; --> 
document.getElementById("employeename").value=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","get.jsp?count="+str,true);
        xmlhttp.send();
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
</head>
<body>

<label for="selempid">Select the employee id:</label>
<select onkeyup="showState(this.value)" >
<option value="0" label="Select" /> 
<option value="1" label="1"/>
<option value="2" label="2"/>

</select> 



<input type="text"  id="employeename"  readonly />



</body>
</html>