package com.example.demo.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entities.Client;

public interface ClientDao extends JpaRepository<Client, Long>{

	Client findByEmailAndPassword(String email, String password);

}
