<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
              <title>Registration Page</title>
        
 <script type="text/javascript" language="javascript">
function getXMLHttpRequest(){
      var xmlHttpReq = false;
      // to create XMLHttpRequest object in non-Microsoft browsers
      if (window.XMLHttpRequest) {
        xmlHttpReq = new XMLHttpRequest();
      } 
      else if (window.ActiveXObject) {
        try {
          // to create XMLHttpRequest object in later versions
          // of Internet Explorer
          xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (exp1) {
          try {
            // to create XMLHttpRequest object in older versions
            // of Internet Explorer
            xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
          } catch (exp2) {
            xmlHttpReq = false;
          }
        }
      }
      return xmlHttpReq;
    };
    function usernameValidation(str)
    {
        if (str.length==0) 
        { 
            document.getElementById("Emailprocess").innerHTML="should not be empty";
            return false;
        }
        else if(str.length<=4)
        {
                document.getElementById("Emailprocess").innerHTML="need more than 4 charachers";
                return false;
        }
        else{
                var xmlHttpRequest = getXMLHttpRequest();
                xmlHttpRequest.onreadystatechange =function()
                {
                    if (xmlHttpRequest.readyState < 4 && xmlHttpRequest.readyState > 0)
                    {
                        document.getElementById("Emailprocess").innerHTML = "<img src='images/load.gif' alt='checking...' width=16 height=16/>";
                    }
                    if (xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200)
                    {
                    	//alert(1);
                    	//alert(xmlHttpRequest.responseText);
                    	//String res=xmlHttpRequest.responseText;
                    	//res=res.trim();
                        if(xmlHttpRequest.responseText==1)
                        {
                            document.getElementById("Emailprocess").innerHTML = "<img src='images/ok.jpg' alt='username available' width=16 height=16/>";
                            document.getElementById("Emailprocess1").innerHTML ="." ;
                            
                           // document.getElementById('employee').value=val;
                        }
                        else
                        {
                            document.getElementById("Emailprocess").innerHTML = "username not available";
                            document.getElementById("Email").value="";
                        }
                    }
                };
                xmlHttpRequest.open("GET", "check.jsp?email="+str, true);
                xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                xmlHttpRequest.send();

            };
    };

function userSubmitValidation(){
    var msg = document.getElementById("Emailprocess1").innerHTML;  
    if(msg=='.'){
        return true;
    }
    else{
        return false;
    }
};

</script>
        
      
        





    <SCRIPT LANGUAGE="JavaScript">
           
            function checker()
            {
               
              var username = document.Registrationform.Username
              var firstname = document.Registrationform.FirstName
              var lastname = document.Registrationform.LastName
              var email = document.Registrationform.Email
              var password = document.Registrationform.Password
              //  var result2 = document.form1.text1.value.match(regExp2)
              //  if (result1 == null && result2 == null) {
            	  if (document.Registrationform.Username.value.trim() == ""){
            		  alert("Please enter the 'Username'")
                      Username.focus()
                      return false
            	  }
                
              else if (firstname.value.trim() == "") {
                    alert("Please enter the 'Firstname'")
                    firstname.focus()
                    return false
                } 
              else if (lastname.value.trim() == "") {
                  alert("Please enter the 'Lastname'")
                  lastname.focus()
                  return false
              } 
              else if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)) ) {
                  alert("Please enter the 'Email correctly' Eg.test@test.com")
                  email.focus()
                  return false
              } 
              else if (password.value.trim() == "") {
                  alert("Please enter the 'Password'")
                  password.focus()
                  return false
              } 
              /* else if ()
            	  {
            	  
            	  alert("Please check the 'Email'")
            	  email.focus()
            	  return false
            	  } */
              else {
                    document.Registrationform.submit()
                }
            }
            
        </SCRIPT>
            <link rel="stylesheet" href="normalize.css">    
</head>
<body>
<div>
<center>




<form:form name="Registrationform" action="registrationsuccess.do" commandName="regcommand" method="POST" ONSUBMIT="return checker()" >
<h1>Registration Page</h1>
<table>

<c:choose>

<c:when test="${regcommand.eventStatus == false}">
	<h3><font color="blue">Duplication occurs</font></h3>
	<h4><font color="red">There is an record for the same details</font></h4>
</c:when>

</c:choose>
<table>
<tr>
<td><label for="username">User Name:</label></td>
<td><form:input path="Username" id="Username" action="true"/><br/></td></tr>

<tr><td><label for="firstname">First Name:</label></td>
<td><form:input path="FirstName" id="FirstName" action="true"/><br/></td></tr>

<tr><td><label for="lastname">Last Name:</label></td>
<td><form:input path="LastName" id="LastName"/><br/></td></tr>

<tr><td><label for="email">Email:</label></td>
<td><form:input path="Email" id="Email" onChange="usernameValidation(this.value)"/><br/></td><td> <div id="Emailprocess"><div id="Emailprocess1" > </div> </div> </td></tr>

<tr><td><label for="password">Password:</label></td>
<td><form:password path="Password" id="Password"/><br/></td></tr>


</table>
<input type="submit" value="Register"/>

</form:form>

<form:form name="registrationformback" action="registrationPage.do">
<input type="submit" value="Back"/>
</form:form>
</center>
</div>
</body>
</html>