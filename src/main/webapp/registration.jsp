<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link href="css/registration.css" rel="stylesheet">

</head>
<body>
<script>
function insertFunction() {
  alert("You have successfully registered!");
}
</script>
	
	<div class="container">
		<div class="tittle">Registration</div>
			<form method="POST" action="registerServlet">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Full Name</span>
						<input type="text" placeholder="Enter Your Name" name="name" required>
					</div>
					<div class="input-box">
						<span class="details">Address</span>
						<input type="text" placeholder="Enter Your Address" name="address" required>
					</div>
					<div class="input-box">
						<span class="details">Email</span>
						<input type="email" placeholder="Enter Your Email" name="email" required>
					</div>
					<div class="input-box">
						<span class="details">Mobile</span>
						<input type="text" placeholder="Enter Your Mobile" name="mobile" required>
					</div>
					<div class="input-box">
						<span class="details">User Name</span>
						<input type="text" placeholder="Enter Your User Name" name="uname" required>
					</div>
					<div class="input-box">
						<span class="details">Password</span>
						<input type="password" placeholder="Enter Your Password" name="pwd" required>
					</div>

				</div>
					<div class="gender-details">
					<input type="radio" name="gender" id="dot-1">
					<input type="radio" name="gender" id="dot-2">
					<input type="radio" name="gender" id="dot-3">
						<span class="gender-tittle">Gender</span>
						<div class="catogory">
							<label for="dot-1">
								<span class="dot one"></span>
								<span class="gender">Male</span>
							</label>
							<label for="dot-2">
								<span class="dot two"></span>
								<span class="gender">Female</span>
							</label>
							<label for="dot-3">
								<span class="dot three"></span>
								<span class="gender">Prefer not to say</span>
							</label>
						</div>
					</div>
					<div class="button">
					 <input type="Submit"name="signup" id="signup" class="form-submit" value="Register" onclick="insertFunction()">
					
					</div>
			</form>
					<div class="register">
                    <span>You have an account?</span>
                    <a href="login.jsp" class="hero-btn">Login</a> 
              		</div>
	</div>
	
</body>
</html>