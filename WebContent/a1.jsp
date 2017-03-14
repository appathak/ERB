<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jobs Evaluation</title>
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
		String jt1=request.getParameter("jt1");
	 	String jt2=request.getParameter("jt2");
	 	Integer jn=Integer.parseInt(request.getParameter("jn"));
	 	String jta=request.getParameter("jta");
	 	System.out.println(jt1+"::"+jt2+"::"+jn+"::"+jta);
		if(!jt1.equals("")){
			cnt1+=5;
		}
		if(!jt2.equals("")){
			cnt1+=5;
		}
		if(jn!=0){
			cnt1+=5;
		}
		points=cnt1/10;
	 	String str = (String)session.getAttribute("username");
	 	System.out.println(str);
	    Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Connecting to a selected database...");
conn = DriverManager.getConnection(DB_URL,USER,PASS);
System.out.println("Connected database successfully...");
System.out.println("Creating statement for jobs..");
stmt = conn.createStatement();
String sql2 ="insert into jobs values('"+cnt+"','"+str+"','"+jt1+"','"+jt2+"','"+jn+"','"+jta+"','"+points+"')";

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