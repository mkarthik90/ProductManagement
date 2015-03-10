<%@page language="java" import ="java.sql.*" %>  
 <%  
 String name=request.getParameter("count");
 
System.out.println(name);
String[] split=name.split(":");
 name=split[0].trim();
 System.out.println(name);
// String name = "3";
 String buffer; 
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select firstname from empde where empid = '"+name+"%'");  
   while(rs.next()){
buffer=rs.getString(1);
buffer=buffer.trim();
System.out.println(buffer);
out.print(buffer); 
} 
     

%>