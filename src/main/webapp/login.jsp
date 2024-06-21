<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="css/log.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("Status") %>">
    <div class="box">
        <div class="container">
            <div class="input-field">
            <h1>Log In</h1>
                <div class="form">   
                    <form action="log" method="post">
                    
                        <input type="text" id="fname" name="usersUid" placeholder="username" required>
                        <i class="fa fa-user"></i>
                    <br>        
                        <input type="password" id="lname" name="usersPwd" placeholder="Password" required>
                        <i class="fa fa-lock"></i>
                    <br>
                        <button name="submit" type="submit" class="submit">Login</button>
                    </form>
                </div>
                 <span>You don't have an account?<a href="registration.jsp">Register</a> </span>
        </div>
    </div>    
</body>
</html>