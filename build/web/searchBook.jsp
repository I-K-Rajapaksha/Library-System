<%-- 
    Document   : searchBook
    Created on : May 18, 2025, 12:56:28 AM
    Author     : MASTER LK
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Live Search</title>
    <script src="js/validation.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="p-4">
    <h3>Live Book Search</h3>
    <input type="text" id="searchBox" onkeyup="searchBooks()" class="form-control w-50 mb-3" placeholder="Search books...">
    <div id="results" class="border p-3"></div>
</body>
</html>

