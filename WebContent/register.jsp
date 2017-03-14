<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
 	    int cnt;
 	    Random r = new Random();
 	    cnt = r.nextInt(1000);
 String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     String DB_URL = "jdbc:mysql://localhost/erb";
	 String USER = "root";
	 String PASS = "arpit";
	Connection conn=null;
	Statement stmt=null;
	try{
		String fname=request.getParameter("fname");
		String email=request.getParameter("mail");
	 	String uname=request.getParameter("uname");
	 	String pass=request.getParameter("pass");
	 	String m=request.getParameter("Month");
	 	String d=request.getParameter("Day");
	 	String y=request.getParameter("year");
	 	String dob=y+"/"+m+"/"+d;
	 	String gender = request.getParameter("gen");
	 	String pref = request.getParameter("pref");
	
	 	
	     Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Connecting to a selected database...");
conn = DriverManager.getConnection(DB_URL,USER,PASS);
System.out.println("Connected database successfully...");
System.out.println("Creating statement for REG..");
System.out.println(email+":"+uname+":"+pass+":"+dob+":"+gender+":"+pref);
stmt = conn.createStatement();
String sql = "insert into evaluation(p_key,uname) values('"+cnt+"','"+uname+"');";
String sql2 ="insert into Registration values('"+fname+"','"+email+"','"+uname+"','"+pass+"','"+dob+"','"+gender+"','"+pref+"');";

int i=stmt.executeUpdate(sql2);
stmt.executeUpdate(sql);
if(i==1){
		out.println("Registration Successful");
		response.sendRedirect("index.jsp");
}
	else
		out.println("Unsuccessful Registration");
 
	
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