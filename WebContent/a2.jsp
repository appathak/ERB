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
		String it1=request.getParameter("it1");
	 	String it2=request.getParameter("it2");
	 	Integer in=Integer.parseInt(request.getParameter("in"));
	 	String ita=request.getParameter("ita");
		if(!it1.equals("")){
			cnt1+=5;
		}
		if(!it2.equals("")){
			cnt1+=5;
		}
		if(in!=0){
			cnt1+=5;
		}
		points=cnt1/10;
	 	String str1 = (String)session.getAttribute("username");
	 	System.out.println(str1);
	     Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Connecting to a selected database...");
conn = DriverManager.getConnection(DB_URL,USER,PASS);
System.out.println("Connected database successfully...");
System.out.println("Creating statement for internship..");
stmt = conn.createStatement();
String sql3 ="insert into internship values('"+cnt+"','"+str1+"','"+it1+"','"+it2+"','"+in+"','"+ita+"','"+points+"')";

int i=stmt.executeUpdate(sql3);
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