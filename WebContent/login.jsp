<%@ page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=ISO-8859-1>
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
	 String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     String DB_URL = "jdbc:mysql://localhost/erb";
	 String USER = "root";
	 String PASS = "arpit";
	Connection conn=null;
	Statement stmt=null;
	try{
		String name=request.getParameter("usrname");
		String code=request.getParameter("psw");
	     Class.forName("com.mysql.jdbc.Driver");
         System.out.println("Connecting to a selected database...");
conn = DriverManager.getConnection(DB_URL,USER,PASS);
System.out.println("Connected database successfully...");
System.out.println("Creating statement..");
stmt = conn.createStatement();
String sql1 = "SELECT uname,pass FROM Registration where uname='"+name+"' and pass='"+code+"';";
ResultSet rs = stmt.executeQuery(sql1);
if(rs.next())
{
 
	out.println("Welcome");%> </br></br>
<%   
	 //if(rs.next())
	 //{	
	 	String uname=rs.getString("uname");
	 	out.println("Email id:"+uname);%> </br> </br> <%
	 	String password=rs.getString("pass");
	 	out.println("Password:"+password);
	 	%> </br> </br> <%
	 	session.setAttribute("username", uname);
	 	response.sendRedirect("welcome.jsp"); 	
	 //}
	
}	
else{
	out.println("Wrong Password");
	response.sendRedirect("index.jsp"); 
}rs.close();
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