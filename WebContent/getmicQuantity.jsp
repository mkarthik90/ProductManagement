<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page language="java" import ="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 <html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >
<center>
<table>
 <%  
 String mics=request.getParameter("count");
 
System.out.println("testing getprod"+mics);

//String mics="bosch,set2,listit,nonono";
String[] micarr=mics.split(",");
String buffer; 
 int i=0;
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement(); 
 while(i<micarr.length){
	 ResultSet rs = stmt.executeQuery("Select micquantity from productlist where mic='"+micarr[i]+"'");
	 
	    while(rs.next()){
	 	   

	 int micquantity=rs.getInt("micquantity");
	 
	 if(micquantity>0){
	 System.out.println("<tr>"+"<td>"+micarr[i]+"</td>"+"<td>"+micquantity+"</td>"+"</tr>"); 
	 %>
	 
	<tr><td><label for="mics"><%=micarr[i]%></label></td>
	<td><select name="products" path="products" ><c:forEach var="j" begin="1" end="<%=micquantity%>"><option value="<%=micarr[i]%>-${j}" label="${j}" /></c:forEach></select></td>

	</tr>
	
	
	 <%
	 //out.print("<tr>"+"<td>"+micarr[i]+"</td>"+"<td>"+"<select>"+"<c:forEach var=\"j\" begin=\"0\" end=\"5\">"+"<option value=\"${j}\" label=\"${j}\" />"+"</c:forEach>"+"</select>"+"</td>"+"</tr>");
	 //out.print("<tr>"+"<td>"+empid+"</td>"+"<td>"+firstname+"</td>"+"<td>"+lastname+"</td>"+"<td>"+username+"</td>"+"<td>"+email+"</td>"+"</tr>"); 
	 }} 
	   
	 
	      
i++;
 }
 
%>
</table>
</center>
</body>
</html>