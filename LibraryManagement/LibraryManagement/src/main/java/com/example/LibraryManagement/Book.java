package com.example.LibraryManagement;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="book")
public class Book {

  
    @Id  
  @Column(name="isbn")
  Long isbn;
  
  @Column(name="title")
  String title;
  
  @Column(name="ser_name")
  String serial;
  
  @Column(name="description")
  String description;
  
  public Book() { }
  
  public Book(Long isbn, String title, String serial, String description) {
    this.isbn = isbn;
    this.title = title;
    this.serial = serial;
    this.description = description;
  }
  
  
  
  public Long getIsbn() {
    return isbn;
  }
  public void setIsbn(Long isbn) {
    this.isbn = isbn;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getSerial() {
    return serial;
  }
  public void setSerial(String serial) {
    this.serial = serial;
  }
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }
  
}