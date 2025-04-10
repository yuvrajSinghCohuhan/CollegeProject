package com.example.demo.Service;

import java.util.Optional;

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

	public Lawyer findLawyer(long id) {
		Optional<Lawyer> op = ldao.findById(id);
		if(op.isPresent()) {
			Lawyer l = op.get();
			return l;
		}
		return null;
	}
	
	

}
