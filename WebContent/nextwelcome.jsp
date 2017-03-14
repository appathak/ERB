<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="htttps://www.w3schools.com/lib/w3.css">
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
<%@page import="java.sql.*" %> 

	<%
	int count=0,i=0;
	double value=0.0,finalval=0.0;
	ArrayList<String> ar = new ArrayList<>();
	ar.add("x");ar.add("xii");ar.add("ug");ar.add("pg");ar.add("diploma");ar.add("phd");
	ar.add("add_details");ar.add("certification");ar.add("internship");ar.add("jobs");ar.add("por");ar.add("project");
	ar.add("skills");ar.add("ws");
	
	String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    String DB_URL = "jdbc:mysql://localhost/erb";
	String USER = "root";
	String PASS = "arpit";
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null,rs1;
	try{
		Class.forName("com.mysql.jdbc.Driver");
	String str = (String)session.getAttribute("username");
conn = DriverManager.getConnection(DB_URL,USER,PASS);
stmt = conn.createStatement();

while(!ar.isEmpty() && ar.size()>count){
value = 0.0;
String temp = ar.get(count);
System.out.println(temp);
String sql = "select Points from "+temp+" where uname = '"+str+"';";
String insert_sql = "update evaluation set "+temp+"_pt='"+value+"' where uname = '"+str+"';";
rs = stmt.executeQuery(sql);
System.out.println(rs.first());	
	if(rs.first()){
		do{
			value += rs.getDouble("Points");
			System.out.println("Value be:::"+value);
		}while(rs.next());
		finalval += value;
		i = stmt.executeUpdate(insert_sql);
	}else if(rs.isLast()){
		break;
	}
	else{
		count++;
		continue;
	}
count++;
}rs.close();
if(i==1){
	out.println("Values Updated!!");
	request.setAttribute("Final", finalval);
	//RequestDispatcher dispatcher = servletContext().getRequestDispatcher("register.jsp");
	response.sendRedirect("result.jsp");
	%>
  <%	 	 
}	
else{
	response.sendRedirect("welcome.jsp");
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