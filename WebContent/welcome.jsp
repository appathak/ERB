<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css/welcome.css" type="text/css">
<title>Welcome</title>
<script>
function aa(){
document.getElementById('a').innerHTML = Date();
}
</script>
</head>

<body style="background-image:url(images/bck.jpg)" class="w3-padding">
<header>
<div>
<button type="button" class="w3-btn w3-red w3-padding w3-cell-top" style="float:right" onclick="window.location='logout.jsp'">Log Out</button></div></header>	
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
	
    <br><br>
    <div class="login-card w3-hover-border-black" style=" width:100%;">
    <div style="font-size:30px; ">WELCOME <%String str = (String)session.getAttribute("username"); out.println(str); %>
	<div onmouseover="aa();" style="float: right;" id='a'>Check Details</div>
    </div>
    	<fieldset class="eq">
        <legend>Educational Qualifications</legend>
        <form id="form1">	
            <button type="button" id="1" name="tenth" value="1" onClick="document.getElementById('id01').style.display='block'" class="w3-padding w3-black">X</button>
			<button type="button" id="2" name="twelth" value="2" onClick="document.getElementById('id02').style.display='block'" class="w3-padding w3-black">XII</button>
            <button type="button" id="3" name="grad" value="3" onClick="document.getElementById('id03').style.display='block'" class="w3-padding w3-black">Graduation</button>
            <button type="button" id="4" name="postgrad" value="4" onClick="document.getElementById('id04').style.display='block'" class="w3-padding w3-black">Post Graduation</button>
            <button type="button" id="5" name="diploma" value="5" onClick="document.getElementById('id05').style.display='block'" class="w3-padding w3-black">Diploma</button>
            <button type="button" id="6" name="phd" value="6" onClick="document.getElementById('id06').style.display='block'" class="w3-padding w3-black">PHD</button>
        </form>    
        </fieldset>
    	<fieldset class="eq">
        <legend>Jobs</legend>
        <form method="post" action="a1.jsp">
            <input type="text" name="jt1" placeholder="Profile" required>
            <input type="text" name="jt2" placeholder="Oraganization" required>
            <input type="number" name="jn" placeholder="Work Experience" min="0" required><br><br>
            <textarea class="w3-bordered" name="jta" placeholder="Description"></textarea><br>
            <button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button>
        </form>
        </fieldset>
    
		<fieldset class="eq">
      	<legend>Internship</legend>
        <form action="a2.jsp" method="post">
            <input type="text" name="it1" placeholder="Profile" required>
            <input type="text" name="it2" placeholder="Oraganization" required>
            <input type="number" name="in" placeholder="Time Duration" min="0" required><br><br>
            <textarea class="w3-bordered" name="ita" placeholder="Description"></textarea><br>
            <button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button>
        </form>
        </fieldset>    
        
        <fieldset class="eq">
        <legend>Position of responsibility</legend>
        <form action="a3.jsp" method="post">
   			<textarea class="w3-bordered" name="pta" placeholder="Description" style="border-radius:10"></textarea><br>
            <button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button> 
        </form>
        </fieldset>	
        
        <fieldset class="eq">
        	<legend>Project</legend>
            <form action="" method="post">
            <textarea name="p" placeholder="Project Description"></textarea><br>
       		<button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button> 
            </form>
        </fieldset>
        
        <fieldset class="eq">
        <legend>Skills</legend>
        <form action="a5.jsp" method="post">
        	<select name="sdesc" id="skill">
            	<option>Programming Languages</option><option>DB2/Oracle/Mysql</option><option>Graphic designing</option><option>Salesforce</option><option>AWS</option>
            </select><br>
            <button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button>
        </form>
        </fieldset>
        
        <fieldset class="eq">
        <legend>Work Samples</legend>
        <form action="a6.jsp" method="post">
        	<input id="inp" type="url" name="wsdesc" placeholder="Github/Behance or any work sample link"><br>
            <button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button>
        </form>
        </fieldset>
        
        <fieldset class="eq">
        <legend>Certifications</legend>
        <form action="a7.jsp" method="post">	
            <input id="inp" type="text" name="certidesc" placeholder="Certifications"><br>	
            <button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button>
        </form>
        </fieldset>
        
        <fieldset class="eq">
        <legend>Additional Details</legend>
        <form action="a8.jsp" method="post">
        	<input id="inp" type="text" name="info" placeholder="Any Additional Details"><br>	
            <button type="reset" class="w3-btn w3-animate-bottom w3-gray" style="float:right">Reset</button>
            <button type="submit" class="w3-btn w3-animate-bottom w3-green" onclick="alert('Confirm..?');" style="float:right">Save</button>
        </form>
        </fieldset>
    </div>
     
    
    <span id="eq1">	
        <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
      </div>

      <form class="w3-container" method="post" action="aa.jsp">
        <div class="w3-section">
          <label><b>Name</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Name" name="name1" required>
          <label><b>Percentage</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Percentage" name="per1" required>
          <label><b>Year</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Year of Completion" name="yoc1" required>
          <label><b>School Name</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Institution" name="sn1" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Save</button>
          <button type="reset" class="w3-button w3-block w3-gray w3-section w3-padding">Reset</button>
          
        </div>
      </form>
				
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>

    </div>
  </div>
</div>
        
    </span>
    
    <span id="eq2">
            <div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
      </div>

      <form class="w3-container" action="ab.jsp" method="post">
        <div class="w3-section">
          <label><b>Name</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Name" name="name2" required>
          <label><b>Percentage</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Percentage" name="per2" required>
          <label><b>Year</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Year of Completion" name="yoc2" required>
          <label><b>School Name</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Institution" name="sn2" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Save</button>
          <button type="reset" class="w3-button w3-block w3-gray w3-section w3-padding">Reset</button>
          
        </div>
      </form>
				
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id02').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>

    </div>
  </div>
</div>
        
    
    </span>
    <span id="eq3">
            <div id="id03" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id03').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
      </div>

      <form class="w3-container" method="post" action="ac.jsp">
        <div class="w3-section">
          <label><b>Name</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Name" name="name3" required>
          <label><b>Percentage</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Percentage" name="per3" required>
          <label><b>Year</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Year of Completion" name="yoc3" required>
          <label><b>School Name</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Institution" name="sn3" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Save</button>
          <button type="reset" class="w3-button w3-block w3-gray w3-section w3-padding">Reset</button>
          
        </div>
      </form>
				
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id03').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>

    </div>
  </div>
</div>
        
    
    </span>
    <span id="eq4">
            <div id="id04" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id04').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
      </div>

      <form class="w3-container" method="post" action="ad.jsp">
        <div class="w3-section">
          <label><b>Name</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Name" name="name4" required>
          <label><b>Percentage</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Percentage" name="per4" required>
          <label><b>Year</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Year of Completion" name="yoc4" required>
          <label><b>School Name</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Institution" name="sn4" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Save</button>
          <button type="reset" class="w3-button w3-block w3-gray w3-section w3-padding">Reset</button>
          
        </div>
      </form>
				
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id04').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>

    </div>
  </div>
</div>
        
    
    </span>
    <span id="eq5">
            <div id="id05" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id05').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
      </div>

      <form class="w3-container" action="ae.jsp" method="post">
        <div class="w3-section">
          <label><b>Name</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Name" name="name5" required>
          <label><b>Percentage</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Percentage" name="per5" required>
          <label><b>Year</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Year of Completion" name="yoc5" required>
          <label><b>School Name</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Institution" name="sn5" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Save</button>
          <button type="reset" class="w3-button w3-block w3-gray w3-section w3-padding">Reset</button>
          
        </div>
      </form>
				
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id05').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>

    </div>
  </div>
</div>
        
    </span>
    <span id="eq6">
            <div id="id06" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id06').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
      </div>

      <form class="w3-container" action="af.jsp" method="post">
        <div class="w3-section">
          <label><b>Name</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Name" name="name6" required>
          <label><b>Percentage</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Percentage" name="per6" required>
          <label><b>Year</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Year of Completion" name="yoc6" required>
          <label><b>School Name</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Institution" name="sn6" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Save</button>
          <button type="reset" class="w3-button w3-block w3-gray w3-section w3-padding">Reset</button>
          
        </div>
      </form>
				
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id06').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>

    </div>
  </div>
</div>
        
    </span>
     
     
	<footer><button type="submit" onclick="window.location='nextwelcome.jsp'" class="w3-green w3-center w3-btn w3-padding">EVALUATE SCORE</button></footer>
</body>
</html>