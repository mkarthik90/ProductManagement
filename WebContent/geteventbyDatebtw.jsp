<%@page language="java" import ="java.sql.*" %>  
 <%  
 String start=request.getParameter("start");
 String end=request.getParameter("end");
//System.out.println(name);
//String[] split=name.split(":");
 //name=split[0].trim();
 System.out.println(start+" "+end);
// String name = "3";
 String buffer; 
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select eventid,eventname,products,date,returnDate from eventdetails where date BETWEEN '"+start+"'"+" AND '"+end+"'");
System.out.println("after query");
   while(rs.next()){
	   //System.out.println("after query");
	   int eventid=rs.getInt("eventid");
	   String eventname=rs.getString("eventname");
	   String products=rs.getString("products");
	   String eventdate=rs.getString("date");
	   String productsreturndate=rs.getString("returnDate");
	   //System.out.println("<tr>"+"<td>"+eventid+"</td>"+"<td>"+eventname+"</td>"+"</tr>");
	   out.print("<tr>"+"<td>"+eventid+"</td>"+"<td>"+eventname+"</td>"+"<td>"+products+"</td>"+"<td>"+eventdate+"</td>"+"<td>"+productsreturndate+"</td>"+"</tr>");
} 
     

%>