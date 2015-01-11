<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Registration Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
       
        <link rel="shortcut icon" href="../favicon.ico"> 
       <!--  <link rel="stylesheet" type="text/css" href="style.css" /> -->
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />

<!-- <script type="text/javascript">
function validate()
{
var Username = document.getElementById("Username");
var Password = document.getElementById("Password");
var Email=document.getElementById("Email");
var FirstName=document.getElementById("FirstName");
var LastName=document.getElementById("LastName");
var EmpId=document.getElementById("EmpId");
var valid=true;
if(USername.value.length<=0 || Password.value.length<=0 || Email.value.length<=0 || FirstName.value.length<=0 || LastName.value.length<=0 || EmpId.value.length<=0)
	{
	alert("Don't leave the field Empty");
	valid = false;
	}
return valid;
};
</script>

<script type="text/javascript">

$(document).ready(function() {  // <-- enclose your code in a DOM ready handler

    $("#savelogin").validate({
        rules: {
            "Username": { 
                required: true,
                minlength: 6,
                maxlength: 40
            },
            "Password": {
                required: true,  
                minlength: 6,
                maxlength: 40
            }
        },
        messages: {
            "Username": {
                required: "username is required!",
                minlength: "username must be at least 6 characters long"
            },
            "Password": {
                required: "Please enter a password",
                minlength: "Password must be at least 6 characters long"
            }
        }
        /*, // submitHandler is not needed for this case
        submitHandler: function (form) {
            form.submit();  // <-- this is the default
        }
        */
    });

});
</script> -->

<link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
        #errorContainer {
            display: none;
            overflow: auto;
            background-color: #FFDDDD;
            border: 1px solid #FF2323;
            padding-top: 0;
        }
        #errorContainer label {
            float: none;
            width: auto;
        }
        input.error {
            border: 1px solid #FF2323;
        }
    </style>
</head>
<body>
<h1>Registration Page</h1>

<div id="errorContainer">
   <p>Please correct the following errors and try again:</p>
    
</div>


<form:form name="Registrationform" action="registrationsuccess.do" commandName="regcommand" method="POST" >

<table>
<tr>
<td><h3>Username</h3></td><td><form:input path="Username" id="Username" action="true"/><br/></td></tr>
<tr><td><h3>Firstname</h3></td><td><form:input path="FirstName" id="FirstName" action="true"/><br/></td></tr>
<tr><td><h3>Lastname</h3></td><td><form:input path="LastName" id="LastName"/><br/></td></tr>
<tr><td><h3>Email</h3></td><td><form:input path="Email" id="Email"/><br/></td></tr>

<tr><td><h3>Password</h3></td><td><form:password path="Password" id="Password"/><br/></td></tr>

<tr><td></td><td><input type="submit" value="Register"/></td></tr>
</table>

</form:form>

<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(function(){
        $('#Registrationform').validate({
            rules: {
                FirstName: "required",
                LastName: "required",
                Username: "required",
                Email: "required",
                Password: "required",
            },
            messages: {
                FirstName: "Please enter your first name.",
                LastName: "Please enter your last name.",
                Username: "Please enter the user name",
                Email: "Please enter the email",
                Password: "please enter the password",
            },
            errorContainer: $('#errorContainer'),
            errorLabelContainer: $('#errorContainer ul'),
            wrapper: 'li'
        });
    });
</script>
</body>
</html>