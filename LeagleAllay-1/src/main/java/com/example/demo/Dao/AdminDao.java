package com.example.demo.Dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entities.Admin;

public interface AdminDao extends JpaRepository<Admin, Integer>{

	Optional<Admin> findByEmailAndPassword(String email, String password);

}
