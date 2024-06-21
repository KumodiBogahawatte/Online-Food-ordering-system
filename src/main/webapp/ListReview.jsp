<%@page import="java.util.List"%>
<%@page import="model.Review"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Print review Data</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<main>

    <table class="table table-striped table-hover table-bordered table-responsive">
        <thead class="text-center">
            <tr class="table-info">
                <th>Review ID</th>
                <th>User Name</th>
                <th>User mobile</th>
                <th>User email</th>
                <th>User message</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody class="table-hover text-center">
            <!-- Uncomment the loop here -->
            <c:forEach items="${reviewList}" var="Review">
                <tr>
                    <td>${Review.rid}</td>
                    <td>${Review.name}</td>
                    <td>${Review.mobile}</td>
                    <td>${Review.email}</td>
                    <td>${Review.message}</td>
                    <td class="text-center">
                        <a class="text-decoration-none text-white" href="./updateReviewServlet?reviewId=${Review.rid}">
                            <button class="btn btn-primary">Edit</button>
                        </a>
                    </td>
                    <td class="text-center">
                        <a class="text-decoration-none text-white" href="./deleteReviewServlet?rid=${Review.rid}">
                            <button class="btn btn-danger">Delete</button>
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