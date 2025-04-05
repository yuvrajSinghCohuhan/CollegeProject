package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Dao.LawyerDao;
import com.example.demo.Entities.Lawyer;

@Component
public class LawyerService {
	@Autowired
	private LawyerDao ldao;

	public Lawyer saveLawyer(Lawyer l) {
		if(l!=null) {
		Lawyer save = ldao.save(l);
		return save;
		}
		return null;
	}

	public Lawyer verify(String email, String password) {
		Lawyer l = ldao.findByEmailAndPassword(email,password);
		if(l!=null) {
			return l;
		}
		return null;
	}
	
	

}
