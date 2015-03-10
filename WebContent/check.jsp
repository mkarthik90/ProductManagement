<%@page language="java" import ="java.sql.*" %>  
 <%  
 String name=request.getParameter("email");
 
System.out.println(name);
//String[] split=name.split(":");
// name=split[0].trim();
// System.out.println(name);
// String name = "3";
 String buffer; 
 int num=0;
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select email from empde where email LIKE '"+name+"%'");  
 
 while(rs.next()){
num++;

} 
 System.out.println(num);

 if(num <1)
 {
	// System.out.println();
	 out.println(1);
 }
 else
 {
	 out.println("unavailable");
 }

%>