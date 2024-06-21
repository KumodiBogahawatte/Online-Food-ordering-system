<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
   <link href="css/NewFile.css" rel="stylesheet">
   
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
       <section class="home" id="home">
	<div class="image">
	
		<!-- back image-->
			<img src="./img/clipart-restaurant-order-food-8.png" alt="">
	</div>
	<div class="content">
        <h3>Welcome Admin!</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque aut quae a, animi unde neque.</p><br><br>
        
	</div>
</section>

        <main>
    <table class="table table-striped table-hover table-bordered table-responsive">
        <thead class="text-center">
            <tr class="table-info">
                	<th>User ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>User Name</th>
                    <th>Operations</th>
            </tr>
        </thead>
        <tbody class="table-hover text-center">
            <!-- Uncomment the loop here -->
           <c:forEach items="${userList}" var="user">
                <tr>
                		<td>${user.uID}</td>
                        <td>${user.name}</td>
                        <td>${user.address}</td>
                        <td>${user.email}</td>
                        <td>${user.mobile}</td>
                        <td>${user.uname}</td>
                  
                    <td class="text-center">
                        <a class="text-decoration-none text-white" href="./updateUser?uId=${user.uID}">
                            <button class="btn btn-primary">Edit</button>
                        </a>
                        
                        <a class="text-decoration-none text-white" href="./deleteUserServlet?uID=${user.uID}">
                            <button class="btn btn-danger">Delete</button>
                        </a>
                        
                    </td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <a href="login.jsp"><button class="hero-btn">Log Out</button></a>
</main>

</body>
</html>
