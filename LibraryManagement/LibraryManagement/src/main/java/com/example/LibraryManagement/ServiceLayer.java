package com.example.LibraryManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceLayer {
   @Autowired
      private UserDao repo;
   
   @Autowired
   private BookDao repo1;

      public String authenticate(String username, String password) {
          User user = repo.findByUsername(username);
          if (user != null && user.getPassword().equals(password)) {
        	  System.out.println("Logged in ");
        	  
              return user.getRole();
          }

          return null;
      }

	public List<Book> searchByTitle(String title) {
		List<Book> lb = repo1.findByTitleContaining(title);
//		for(Book b:lb) {
//			System.out.println(b.title);
//		}
		return lb;
	}
	
	public List<Book> getAllBooks() {
		List<Book> lb = repo1.findAll();
//		for(Book b:lb) {
//			System.out.println(b.title);
//		}
		return lb;
	}

}