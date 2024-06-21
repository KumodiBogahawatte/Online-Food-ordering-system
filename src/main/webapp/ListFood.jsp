<%@page import="java.util.List"%>
<%@page import="model.Food"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Print Food Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
 <!--JavaScript-->   
 <script>
function deleteFunction() {
  alert("You have successfully deleted the details!");
}
</script>
<style>

	.list-btn{
		font-size:25px;
		font-weight:bold;
	}
	.list-btn:hover{
		transition:0.1s;
		background:;
		color:black;
	}
</style>
<main>
<form action="addFood.jsp">
 		<button type="submit" class="list-btn">Add new food</button>
  </form> <hr>
    <table class="table table-striped table-hover table-bordered table-responsive">
        <thead class="text-center">
            <tr class="table-info">
                <th>Food ID</th>
                <th>Food Name</th>
                <th>Food Price</th>
                <th>Food Description</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody class="table-hover text-center">
            <!-- Uncomment the loop here -->
            <c:forEach items="${foodList}" var="Food">
                <tr>
                    <td>${Food.foodID}</td>
                    <td>${Food.fName}</td>
                    <td>${Food.fPrice}</td>
                    <td>${Food.fDescription}</td>
                    <td class="text-center">
                        <a class="text-decoration-none text-white" href="./updateFoodServlet?foodId=${Food.foodID}">
                            <button class="btn btn-primary">Edit</button>
                        </a>
                    </td>
                    <td class="text-center">
                        <a class="text-decoration-none text-white" href="./deleteFoodServlet?foodID=${Food.foodID}">
                            <button class="btn btn-danger" onclick="deleteFunction()">Delete</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</main>

<style>
    main {
        margin: 250px 15px;
    }
</style>

</body>
</html>
