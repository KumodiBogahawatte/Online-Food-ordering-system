<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update user</title>
<link href="css/registration.css" rel="stylesheet">
</head>
<body>

	<form method="POST" action="./updateUser">
				<div class="user-details">
				<div class="input-box">
						<span class="details">User ID</span>
						<input type="text" placeholder="" name="uID" value="<%=request.getAttribute("uID") %>"  disabled>
					</div>
					<div class="input-box">
						<span class="details">Full Name</span>
						<input type="text" placeholder="" name="name" value="<%=request.getAttribute("name") %>" required>
					</div>
					<div class="input-box">
						<span class="details">Address</span>
						<input type="text" placeholder="" name="address" value="<%=request.getAttribute("address") %>"  required>
					</div>
					<div class="input-box">
						<span class="details">Email</span>
						<input type="email" placeholder="" name="email" value="<%=request.getAttribute("email") %>"  required>
					</div>
					<div class="input-box">
						<span class="details">Mobile</span>
						<input type="text" placeholder="" name="mobile" value="<%=request.getAttribute("mobile") %>"  required>
					</div>
					<div class="input-box">
						<span class="details">User Name</span>
						<input type="text" placeholder="" name="uname" value="<%=request.getAttribute("uname") %>"  required>
					</div>
					<div class="input-box">
						<input type="hidden" placeholder="" name="uID" value="<%=request.getAttribute("uID") %>">
						<button type="submit">Update</button>
					</div>

				</div>
			</form>

</body>
</html>