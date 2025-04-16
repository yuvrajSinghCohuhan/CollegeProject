package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Dao.ClientDao;
import com.example.demo.Entities.Client;

@Component
public class ClientService {
	@Autowired
	private ClientDao cldao;
	
	public Client saveClient(Client c1) {
		if(c1!=null) {
		Client save = cldao.save(c1);
		return save;
		}
		return null;
	}

	public Client verify(String email, String password) {
		Client c = cldao.findByEmailAndPassword(email,password);
		if(c!=null) {
			return c;
		}
		return null;
	}


}
