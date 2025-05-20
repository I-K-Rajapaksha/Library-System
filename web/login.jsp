<%-- 
    Document   : login
    Created on : May 18, 2025, 12:55:57 AM
    Author     : MASTER LK
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body class="bg-light d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4 shadow-lg w-25">
        <h4 class="text-center mb-4">Library Login</h4>
        <form action="LoginServlet" method="post">
            <input type="text" class="form-control mb-3" name="username" placeholder="Username" required>
            <input type="password" class="form-control mb-3" name="password" placeholder="Password" required>
            <button class="btn btn-primary w-100" type="submit">Login</button>
        </form>
    </div>
    <form action="LoginServlet" method="post">

</body>
</html>
