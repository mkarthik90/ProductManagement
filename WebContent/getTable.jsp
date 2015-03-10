<%@page language="java" import ="java.sql.*" %>  
 <%  
 String name=request.getParameter("count");
 
//System.out.println(name);
String[] split=name.split(":");
 name=split[0].trim();
 System.out.println(name);
// String name = "3";
 String buffer; 
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select empid, firstname, lastname, username, email from empde");

   while(rs.next()){
int empid=rs.getInt("empid");
String firstname=rs.getString("firstname");
String lastname=rs.getString("lastname");
String username=rs.getString("username");
String email=rs.getString("email");
//System.out.println("<tr>"+"<td>"+empid+"</td>"+"<td>"+firstname+"</td>"+"</tr>");
out.print("<tr>"+"<td>"+empid+"</td>"+"<td>"+firstname+"</td>"+"<td>"+lastname+"</td>"+"<td>"+username+"</td>"+"<td>"+email+"</td>"+"</tr>"); 
} 
     

%>