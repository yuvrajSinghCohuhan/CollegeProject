package com.example.demo.Service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Dao.LawyerDao;
import com.example.demo.Entities.Client;
import com.example.demo.Entities.Lawyer;

@Component
public class LawyerService {
	@Autowired
	private LawyerDao ldao;

	public Lawyer saveLawyer(Lawyer l,MultipartFile file) throws IOException {
		if(l!=null) {
			l.setImageName(file.getOriginalFilename());
			l.setImage(file.getBytes());
			l.setImageType(file.getContentType());
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

	public List<Lawyer> findAllLawyer() {
		List<Lawyer> all = ldao.findAll();
		if(all.size()!=0) {
			return all;
		}
		return null;
	}

	public Lawyer update(Lawyer lw) {
		Lawyer cl1 = ldao.findById(lw.getId()).get();
		cl1.setEmail(lw.getEmail());
		cl1.setName(lw.getName());
		cl1.setPhone(lw.getPhone());
		cl1.setSpecialization(lw.getSpecialization());
		Lawyer save = ldao.save(cl1);
		
		return save;
	}

	public Lawyer changePass(String password, String oldPass, Lawyer lawyer) {
		Lawyer lw = ldao.findByEmailAndPassword(lawyer.getEmail(),oldPass);
		if(lw!=null) {
			lw.setPassword(password);
			Lawyer save = ldao.save(lw);
			return save;
		}
		return null;
	}
	
	

}
