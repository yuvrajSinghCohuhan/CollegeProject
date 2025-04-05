package com.example.demo.Entities;
import jakarta.persistence.*;

@Entity
public class Lawyer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String specialization;
    private String email;
    private String password;
    private String phone;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Lawyer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Lawyer(String name, String specialization, String email, String password, String phone) {
		super();
		this.name = name;
		this.specialization = specialization;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Lawyer [id=" + id + ", name=" + name + ", specialization=" + specialization + ", email=" + email
				+ ", phone=" + phone + "]";
	}
    
    
}
