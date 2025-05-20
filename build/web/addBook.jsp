<%-- 
    Document   : addBook
    Created on : May 18, 2025, 12:56:41 AM
    Author     : MASTER LK
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Book</title>
    <script src="js/validation.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <h3>Add New Book</h3>
    <form action="BookServlet" method="post" onsubmit="return validateBookForm()">
        <input type="text" name="title" id="title" class="form-control mb-3" placeholder="Book Title" required>
        <input type="text" name="author" id="author" class="form-control mb-3" placeholder="Author Name" required>
        <input type="text" name="isbn" id="isbn" class="form-control mb-3" placeholder="ISBN">
        <button class="btn btn-success">Add Book</button>
    </form>
</body>
</html>
