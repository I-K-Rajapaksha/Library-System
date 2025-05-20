/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class User {
    private int id;
    private String username, password, role;

    public User() {}
    public User(int id, String username, String password, String role) {
        this.id = id; this.username = username; this.password = password; this.role = role;
    }

    public String getUsername() { return username; }
    public String getRole() { return role; }
}
