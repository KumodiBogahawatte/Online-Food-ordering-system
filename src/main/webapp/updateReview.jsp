<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ReviewDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Review"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Review</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<br><br><br><br><br>
  <h2>Update Food Details</h2><br><br>
  
  <form method="POST" action="./updateReviewServlet">
    <div class="form-group">
      <label for="FoodID">Review ID : </label>
      <input type="text" class="form-control"name="rid" value="<%= request.getAttribute("rid") %>" disabled>
    </div>
    <div class="form-group">
      <label for="fName">User Name : </label>
      <input type="text" class="form-control" name="name" value="<%= request.getAttribute("name") %>" required>
    </div>
    <div class="form-group">
      <label for="mobile">User mobile : </label>
      <input type="text" class="form-control" name="mobile" value="<%= request.getAttribute("mobile") %>" required>
    </div>
    <div class="form-group">
      <label for="email">User Email : </label>
      <input type="text" class="form-control" name="email" value="<%= request.getAttribute("email") %>" required>
    </div>
    <div class="form-group">
      <label for="message">User message : </label>
      <input type="text" class="form-control" name="message" value="<%= request.getAttribute("message") %>" required>
    </div>
    <input type="hidden" class="form-control"name="rid" value="<%= request.getAttribute("rid") %>" >
  	<button type="submit" class="btn btn-default">Update</button>	
  </form>
</div>
</body>
</html>