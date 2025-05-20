<%-- 
    Document   : dashboard
    Created on : May 18, 2025, 12:56:16?AM
    Author     : MASTER LK
--%>

<%@ page session="true" %>
<%
    String role = (String) session.getAttribute("role");
    String username = (String) session.getAttribute("username");

    if (role == null || username == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    boolean isAdmin = "Admin".equalsIgnoreCase(role.trim());
%>
<% System.out.println("DASHBOARD: role in session = [" + role + "]"); %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Welcome, <%= username %>! (<%= role %>)</h2>

        <a href="searchBook.jsp" class="btn btn-outline-primary mb-2">Search Books</a>

        <% if (isAdmin) { %>
            <a href="addBook.jsp" class="btn btn-outline-success mb-2">Add Book</a>
        <% } %>

        <a href="LogoutServlet" class="btn btn-outline-danger">Logout</a>
    </div>
</body>
</html>
