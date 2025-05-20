<%-- 
    Document   : liveSearch
    Created on : May 18, 2025, 12:55:32?AM
    Author     : MASTER LK
--%>

<%@ page import="java.util.*, model.Book, dao.BookDAO" %>
<%
    String q = request.getParameter("q");
    List<Book> books = new BookDAO().searchBooks(q);
    for (Book book : books) {
%>
    <div><strong><%= book.getTitle() %></strong> by <%= book.getAuthor() %></div>
<% } %>
