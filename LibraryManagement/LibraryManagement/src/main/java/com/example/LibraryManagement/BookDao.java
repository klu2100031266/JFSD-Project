package com.example.LibraryManagement;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BookDao extends JpaRepository<Book, Long>{

	List<Book> findByTitleContaining(String title);

}
