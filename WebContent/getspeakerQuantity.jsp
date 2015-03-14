<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page language="java" import ="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 <html>
<body >
<center>
<table>
 <%  
 String speakers=request.getParameter("count");
 

//String speakers="boss,takeit,nooo,hahaha";
String[] speakerarr=speakers.split(",");
String buffer; 
 int i=0;
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement(); 
 while(i<speakerarr.length){
	 ResultSet rs = stmt.executeQuery("Select speakerquantity from productlist where speaker='"+speakerarr[i]+"'");
	 System.out.println("after query");
	    while(rs.next()){
	 	   //System.out.println("after query");

	 int speakerquantity=rs.getInt("speakerquantity");
	 
	 
	 System.out.println("<tr>"+"<td>"+speakerarr[i]+"</td>"+"<td>"+speakerquantity+"</td>"+"</tr>");%>
	 <tr><td><label for="mics"><%=speakerarr[i]%></label></td>
	<td><select name="products" path="products" ><c:forEach var="j" begin="0" end="<%=speakerquantity %>"><option value="<%=speakerarr[i]%>-${j}" label="${j}" /></c:forEach></select></td>

	</tr>
	 <%
	 //out.print("<tr>"+"<td>"+micarr[i]+"</td>"+"<td>"+"<select>"+"<c:forEach var=\"j\" begin=\"0\" end=\"5\">"+"<option value=\"${j}\" label=\"${j}\" />"+"</c:forEach>"+"</select>"+"</td>"+"</tr>");
	 //out.print("<tr>"+"<td>"+empid+"</td>"+"<td>"+firstname+"</td>"+"<td>"+lastname+"</td>"+"<td>"+username+"</td>"+"<td>"+email+"</td>"+"</tr>"); 
	 } 
	   
	 
	      
i++;
 }
 
%>
</table>
</center>
</body>
</html>