<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FoodDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Food"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Food</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
 <script>
function updateFunction() {
  alert("You have successfully updated the details!");
}
</script>
<div class="container">
<br><br><br><br><br>
  <h2>Update Food Details</h2><br><br>
  
  <form method="POST" action="./updateFoodServlet">
    <div class="form-group">
      <label for="FoodID">Food ID : </label>
      <input type="text" class="form-control"name="foodID" value="<%= request.getAttribute("foodID") %>" disabled>
    </div>
    <div class="form-group">
      <label for="fName">Food Name : </label>
      <input type="text" class="form-control" name="fName" value="<%= request.getAttribute("fName") %>" required>
    </div>
    <div class="form-group">
      <label for="fPrice">Food price : </label>
      <input type="text" class="form-control" name="fPrice" value="<%= request.getAttribute("fPrice") %>" required>
    </div>
    <div class="form-group">
      <label for="fDescription">Food Description : </label>
      <input type="text" class="form-control" name="fDescription" value="<%= request.getAttribute("fDescription") %>" required>
    </div>
    <input type="hidden" class="form-control"name="foodID" value="<%= request.getAttribute("foodID") %>" >
  	<button type="submit" class="btn btn-default" onclick="updateFunction()">Update</button>	
  </form>
</div>

</body>
</html>