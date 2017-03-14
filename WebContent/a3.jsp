<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>


<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="com.mysql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page language="java"%>
<%@page session="true"%>	
<%@ page import="java.sql.*" %>
 	    <% 
	Thread.sleep(2000); 
int cnt;
 double points;
 	   
 	 String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     String DB_URL = "jdbc:mysql://localhost/erb";
	 String USER = "root";
	 String PASS = "arpit";
	Connection conn=null;
	Statement stmt=null;
	try{
	    Random rand = new Random();
	    cnt = rand.nextInt(500);
	 	String pta=request.getParameter("pta");
	 	if(pta.equals(""))
	 		points=0.0;
	 	else
	 		points=0.1;
	 	String str = (String)session.getAttribute("username");
	 	System.out.println(str);
	     Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Connecting to a selected database...");
conn = DriverManager.getConnection(DB_URL,USER,PASS);
System.out.println("Connected database successfully...");
System.out.println("Creating statement..");
stmt = conn.createStatement();
String sql2 ="insert into por values('"+cnt+"','"+str+"','"+pta+"','"+points+"')";

// TO CALCULATE THE NO OF ROWS THAT WILL BE USEFUL FOR FURTHER EVALUATION
/*ResultSet rs = st.executeQuery("select count(*) from TABLE_NAME");
rs.next();
int count = rs.getInt(1);*/

int i=stmt.executeUpdate(sql2);
if(i==1){
	response.sendRedirect("welcome.jsp");
%>
		
<% 
}
	else
		out.println("record not updated");
 
	
}catch(SQLException se){
se.printStackTrace();
}catch(Exception e){
e.printStackTrace();
}finally{
try{
if(stmt!=null)
stmt.close();
}
catch(SQLException se){
}
try{
if(conn!=null)
conn.close();
}catch(SQLException se){
se.printStackTrace();
}
}
%>

</body>
</html>