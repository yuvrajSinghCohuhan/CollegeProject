package com.example.demo.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entities.Lawyer;

public interface LawyerDao extends JpaRepository<Lawyer, Long> {

	Lawyer findByEmailAndPassword(String email, String password);

}
