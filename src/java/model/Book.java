/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Book {
    private int id;
    private String title, author, isbn;

    public Book() {}
    public Book(int id, String title, String author, String isbn) {
        this.id = id; this.title = title; this.author = author; this.isbn = isbn;
    }

    public int getId() { return id; }
    public String getTitle() { return title; }
    public String getAuthor() { return author; }
    public String getIsbn() { return isbn; }
}
