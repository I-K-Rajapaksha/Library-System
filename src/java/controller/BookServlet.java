/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.BookDAO;
import model.Book;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String isbn = request.getParameter("isbn");

        if (title == null || title.trim().isEmpty() || author == null || author.trim().isEmpty()) {
            request.setAttribute("error", "Missing required fields.");
            request.getRequestDispatcher("addBook.jsp").forward(request, response);
            return;
        }

        Book book = new Book(0, title, author, isbn);
        boolean result = new BookDAO().addBook(book);

        if (result) {
            response.sendRedirect("dashboard.jsp");
        } else {
            request.setAttribute("error", "Database insert failed.");
            request.getRequestDispatcher("addBook.jsp").forward(request, response);
        }
    }
}
