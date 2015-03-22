<%@page language="java" import ="java.sql.*" %>  
<%@ page import="java.io.*,java.util.Date" %>
<%@ page import="javax.servlet.*,java.text.*" %>
 <%  
 String mydate=request.getParameter("count");
DateFormat dff=new SimpleDateFormat("dd-MM-yyyy");
String tdate=dff.format(new Date());
//System.out.println(name);
//String[] split=name.split(":");
 //name=split[0].trim();
 System.out.println(mydate);
 System.out.println(tdate);
// String name = "3";
    	   out.print(""+tdate+"");
 
     

%>