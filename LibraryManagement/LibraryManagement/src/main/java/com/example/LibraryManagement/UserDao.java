package com.example.LibraryManagement;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,Long>{
	User findByUsername(String username);
}
