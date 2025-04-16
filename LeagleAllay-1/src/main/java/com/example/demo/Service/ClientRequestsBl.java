package com.example.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Dao.ClientRequestRepository;
import com.example.demo.Entities.ClientRequests;
import com.example.demo.Entities.Lawyer;

@Component
public class ClientRequestsBl {
	
	@Autowired
	public ClientRequestRepository crepo;
	
	public ClientRequests addRequest(ClientRequests cr)
	{
		if(cr!=null)
		{
		 return crepo.save(cr);
		}
		return null;
		
	}

	public List<ClientRequests> getAllRequest(Lawyer lawyer) {
	    return crepo.findByLawyer(lawyer); // no need for null check, JPA returns empty list
	}

	
	

}
