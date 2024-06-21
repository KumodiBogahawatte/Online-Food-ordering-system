<%@page import="java.util.ArrayList"%>
<%@page import="DAO.PaymentDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Payment</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<br><br><br><br><br>
  <h2>Update Food Details</h2><br><br>
  
  <form method="POST" action="./updatePaymentServlet">
    <div class="form-group">
      <label for="payID">Payament ID : </label>
      <input type="text" class="form-control"name="payID" value="<%= request.getAttribute("payID") %>" disabled>
    </div>
    <div class="form-group">
      <label for="cardNo">Card No : </label>
      <input type="text" class="form-control" name="cardNo" value="<%= request.getAttribute("cardNo") %>" required>
    </div>
    <div class="form-group">
      <label for="expDate">Exp Date : </label>
      <input type="text" class="form-control" name="expDate" value="<%= request.getAttribute("expDate") %>" required>
    </div>
    <div class="form-group">
      <label for="cvv">CVV : </label>
      <input type="text" class="form-control" name="cvv" value="<%= request.getAttribute("cvv") %>" required>
    </div>
    <div class="form-group">
      <label for="email">Email : </label>
      <input type="text" class="form-control" name="email" value="<%= request.getAttribute("email") %>" required>
    </div>
    <input type="hidden" class="form-control"name="payID" value="<%= request.getAttribute("payID") %>">
  	<button type="submit" class="btn btn-default">Update</button>	
  </form>
</div>
</body>
</html>