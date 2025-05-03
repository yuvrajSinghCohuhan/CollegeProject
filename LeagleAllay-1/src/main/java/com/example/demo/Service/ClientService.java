package com.example.demo.Service;

import java.util.List;

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

	public Client getUser(String email, String password) {
		// TODO Auto-generated method stub
		Client cl = cldao.findByEmail(email);
		if(cl!=null) {
			cl.setPassword(password);
			Client save = cldao.save(cl);
		return save;
		}
		return null;
	}

	public List<Client> getAllClient() {
		List<Client> all = cldao.findAll();
		return all;
	}

	public Client update(Client cl) {
		Client cl1 = cldao.findById(cl.getId()).get();
		cl1.setEmail(cl.getEmail());
		cl1.setName(cl.getName());
		cl1.setPhone(cl.getPhone());
		Client save = cldao.save(cl1);
		return save;
	}

	public Client changePass(String password, String oldPass,Client client) {
		Client cl = cldao.findByEmailAndPassword(client.getEmail(),oldPass);
		if(cl!=null) {
			cl.setPassword(password);
			Client save = cldao.save(cl);
			return save;
		}
		return null;
		
	}


}
