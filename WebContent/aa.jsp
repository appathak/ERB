<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
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
 double cnt1=0.0,points;
 	   
 	 String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     String DB_URL = "jdbc:mysql://localhost/erb";
	 String USER = "root";
	 String PASS = "arpit";
	Connection conn=null;
	Statement stmt=null;
	try{
	    Random rand = new Random();
	    cnt = rand.nextInt(500);
		String name=request.getParameter("name1");
	 	double percentage=Double.parseDouble(request.getParameter("per1"));
	 	String year=request.getParameter("yoc1");
	 	String school=request.getParameter("sn1");
	 	
	 	if(percentage>90.0){
	 		cnt1+=5;  
	 	}else if(percentage<=90.0 && percentage>75.0){
	 		cnt1+=4;
	 	}else if(percentage<=75.0 && percentage>60.0){
	 		cnt1+=3;
	 	}else if(percentage<=60.0 && percentage>50.0){
	 		cnt1+=2;
	 	}else
	 		cnt1+=1;
		
	 	points = cnt1;
	 	String str = (String)session.getAttribute("username");
	 	System.out.println(str);
	    Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Connecting to a selected database...");
conn = DriverManager.getConnection(DB_URL,USER,PASS);
System.out.println("Connected database successfully...");
System.out.println("Creating statement for tenth..");
stmt = conn.createStatement();
String s = "select * from x where uname = '"+str+"'";
String sql2 ="insert into x values('"+cnt+"','"+str+"','"+name+"','"+percentage+"','"+year+"','"+school+"','"+points+"')";
ResultSet rs = stmt.executeQuery(s);
if(rs.next()){
	%><button type="button" onclick="window.location='welcome.jsp'" class="w3-btn w3-padding w3-margin w3-center">Tenth Details Already Inserted(Click to go back!!)</button><% 
}
else{
int i=stmt.executeUpdate(sql2);
if(i==1){
	response.sendRedirect("welcome.jsp");
%>
		
<% 
}
	else
		out.println("record not updated");
 
}	
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