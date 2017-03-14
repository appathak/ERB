<!doctype html>
<html>
<title>Home</title>
<head>
<meta name="viewport" charset="utf-8" content="width=device-width, initial scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<script>
	function aa(){
		alert("Password does not match");
	}
</script>
</head>	
<header id="head" style="background-color:transparent;">
    	<h1>Enhanced Resume Builder</h1>A rich resume template
        <button type="button" class="w3-btn w3-green w3-padding" onclick="document.getElementById('id01').style.display='block'" style="float:right">Login/Signup</button>
        	
</header>
	
<body style="background-image:url(images/bck.jpg)" class="w3-container">
	
	<section id="first modal">
    	
        <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
        <img src="images/earth-globe-design_1053-479.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="login.jsp" method="post">
        <div class="w3-section">
          <label><b>Username</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="usrname" required>
          <label><b>Password</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="psw" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" onClick="welcome.html" type="submit">Login</button>
          
          <!--<input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me-->
        </div>
      </form>
			
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button class="w3-button w3-block w3-green w3-section w3-padding" onClick="document.getElementById('id02').style.display='block'">Register</button>
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div>
  </div>
</div>
        
    </section>
	<section id="second modal">
    	
        	<div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">×</span>
        <img src="images/earth-globe-design_1053-479.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="register.jsp" method="post">
        <div class="w3-section">
          <label><b>Enter email id</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="email" placeholder="Enter Email" name="mail" required>
          <label><b>Enter username</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter username" name="uname" required>
          <label><b>Password</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Password" name="pass" required>
          <label><b>Reenter Password</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="password" placeholder="Confirm Password" name="conpass" required>
          <label><b>Birthday</b></label>
        
        <div>
        <select style="width:30%;float:left" class="w3-select w3-border w3-margin-bottom" name="Month" required>
		<option> - Month - </option>
		<option value="1">January</option>
		<option value="2">February</option>
		<option value="3">March</option>
		<option value="4">April</option>
		<option value="5">May</option>
		<option value="6">June</option>
		<option value="7">July</option>
		<option value="8">August</option>
		<option value="9">September</option>
		<option value="10">October</option>
		<option value="11">November</option>
		<option value="12">December</option>
		</select>

        <select style="width:28%" class="w3-select w3-border w3-margin-bottom" name="Day" required>
		<option> - Day - </option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
		<option value="16">16</option>
		<option value="17">17</option>
		<option value="18">18</option>
		<option value="19">19</option>
		<option value="20">20</option>
		<option value="21">21</option>
		<option value="22">22</option>
		<option value="23">23</option>
		<option value="24">24</option>
		<option value="25">25</option>
		<option value="26">26</option>
		<option value="27">27</option>
		<option value="28">28</option>
		<option value="29">29</option>
		<option value="30">30</option>
		<option value="31">31</option>
		</select>
        
        <select style="width:30%" class="w3-select w3-border w3-margin-bottom" name="year" required>
		<option> - Year - </option>
		<option value="1994">1994</option>
		<option value="1993">1993</option>
		<option value="1992">1992</option>
		<option value="1991">1991</option>
		<option value="1990">1990</option>
	</select>
    </div>
		<label><b>Gender</b></label><br>
		<br>Male<input type="radio" name="gen">
		Female<input type="radio" name="gen"><br>

		<label><b>Choose Preference</b></label>
		<select class="w3-select w3-border w3-margin-bottom" name="pref" required>
			<option>-Select Your Preference-</option>
			<option>UI/UX Designer</option>
			<option>Database Administrator</option>
			<option>Web Development</option>	
		</select>
        
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Register Now</button>
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id02').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
      </div>

    </div>
  </div>
</div>
        
    </section>
</body>	
</html>