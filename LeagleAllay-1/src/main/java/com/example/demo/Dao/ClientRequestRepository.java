package com.example.demo.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Entities.ClientRequests;
import com.example.demo.Entities.Lawyer;

public interface ClientRequestRepository extends JpaRepository<ClientRequests, Long> {

	List<ClientRequests> findByLawyer(Lawyer lawyer);


}
