<%@page language="java" import ="java.sql.*" %>  
<%@ page import="java.io.*,java.util.Date" %>
<%@ page import="javax.servlet.*,java.text.*" %>
 <%  
 //String name=request.getParameter("count");
DateFormat dff=new SimpleDateFormat("yyyy-MM-dd");
String name=dff.format(new Date());
//System.out.println(name);
//String[] split=name.split(":");
 //name=split[0].trim();
 System.out.println(name);
// String name = "3";
 String buffer; 
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select eventid,eventname,products,eventdate,productsreturndate from events where eventdate='"+name+"'");
System.out.println("after query");
   while(rs.next()){
	   //System.out.println("after query");
	   int eventid=rs.getInt("eventid");
	   String eventname=rs.getString("eventname");
	   String products=rs.getString("products");
	   String eventdate=rs.getString("eventdate");
	   String productsreturndate=rs.getString("productsreturndate");
	   //System.out.println("<tr>"+"<td>"+eventid+"</td>"+"<td>"+eventname+"</td>"+"</tr>");
	   out.print("<tr>"+"<td>"+eventid+"</td>"+"<td>"+eventname+"</td>"+"<td>"+products+"</td>"+"<td>"+eventdate+"</td>"+"<td>"+productsreturndate+"</td>"+"</tr>");
} 
     

%>