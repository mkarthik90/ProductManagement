<%@page language="java" import ="java.sql.*" %>  
 <%  
 String name=request.getParameter("count");
 //String name = "3";
 String buffer; 
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select firstname from empde where empid LIKE '"+name+"%'");  
   while(rs.next()){
buffer=rs.getString(1);
System.out.println("Value of Buffer"+buffer);
} 
 

%>