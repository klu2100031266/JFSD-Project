package com.example.LibraryManagement;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="userjfsd")
public class User {


    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
   private Long id;
  public Long getId() {
    return id;
  }

 public void setId(Long id) {
    this.id = id;
 }
  
  @Column(name="un")
  String username;
  @Column(name="pwd")
  String password;
  @Column(name="role")
  String role;
  


public User() { }
  
  public User(String username, String password, String role) {
    this.username = username;
    this.password = password;
    this.role=role;
  }
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}
  
}