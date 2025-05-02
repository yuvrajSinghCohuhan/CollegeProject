package com.example.demo.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Dao.AdminDao;
import com.example.demo.Entities.Admin;

@Component
public class AdminService {
	@Autowired
	private AdminDao adao;
	
	public Admin getAdmin(Admin a) {
		Optional<Admin> admin = adao.findByEmailAndPassword(a.getEmail(),a.getPassword());
		if(admin.isPresent()) {
			return admin.get();
		}
		return null;
	}

}
