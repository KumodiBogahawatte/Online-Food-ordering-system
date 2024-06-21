<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add foods page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
 <script>
function insertFunction() {
  alert("You have successfully inserted the details!");
}
</script>
<div class="container">
<br><br><br><br><br>
  <h2>Add Food Details</h2><br><br>
  <form action="./listFoodServlet">
 		<button type="submit" class="list-btn">List of Added Foods</button>
  </form>
  <hr>
  <form method="POST" action="AddFoodServlet">
    <div class="form-group">
      <label for="fName">Food Name : </label>
      <input type="text" class="form-control" name="fName" required>
    </div>
    <div class="form-group">
      <label for="fPrice">Food price : </label>
      <input type="text" class="form-control" name="fPrice" required>
    </div>
    <div class="form-group">
      <label for="fDescription">Food Description : </label>
      <input type="text" class="form-control" name="fDescription" required>
    </div>
    <button type="submit" class="btn btn-default" onclick="insertFunction()">Add</button>
  </form>
</div>
</body>
</html>
