package com.example.demo.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Entities.Client;
import com.example.demo.Entities.Lawyer;
import com.example.demo.Service.ClientService;
import com.example.demo.Service.LawyerService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class MainController {
	@Autowired
	private ClientService clservice;
	@Autowired
	private LawyerService lservice;

	@RequestMapping("home")
	public String home() {
		return "index";
	}

	@RequestMapping("about")
	public String about() {
		return "about";
	}

	@RequestMapping("contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping("service")
	public String practice() {
		return "service";
	}

	@RequestMapping("team")
	public String attorneys() {
		return "team";
	}

	@RequestMapping("blog")
	public String blog() {
		return "blog";
	}

	@RequestMapping("login")
	public String login() {
		return "Login";
	}
	
	@RequestMapping("dashboard")
	public String dashboard() {
		return "DashBoard";
	}
	//========================================================================
	@RequestMapping("appointment")
	public String appointment(HttpSession session) {
		String email = (String)session.getAttribute("email");
		if(email==null) {
			return "redirect:/user/login";
		}
		return "index";//adhura hai abhiiiiiii
	}
	//========================================================================
	
	@RequestMapping("lawDetails")
	public String lawDetails(@RequestParam()String id,HttpSession session) {
		session.setAttribute("id", id);
		return "LawDetails";
	}
	
	@RequestMapping("loginTask")
	public String loginTask(@RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password, @RequestParam(value = "role") String role,HttpSession session) {
		
		session.setAttribute("role",role);
		if(role.equals("client")) {
		Client c = clservice.verify(email,password);
		if(c!=null) {
			session.setAttribute("email", email);
		return "DashBoard";
		}
		}else if(role.equals("lawyer")) {
			Lawyer l = lservice.verify(email,password);
			if(l!=null) {
				session.setAttribute("email", email);
				return "DashBoard";
			}
		}
		session.setAttribute("failed", "Login Failed");
		return "Login";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.setAttribute("email", null);
		session.setAttribute("role", null);
		session.setAttribute("client", null);
		session.setAttribute("lawyer", null);
		session.invalidate();
		return "Login";
	}

	@GetMapping("single")
	public String single() {
		return "single";
	}

	@GetMapping("register")
	public String register() {
		return "Register";
	}

	@GetMapping("portfolio")
	public String portfolio() {
		return "portfolio";
	}

	@RequestMapping("clientRegister")
	public String clientRegister() {

		return "ClientRegistration";
	}

	@RequestMapping("lawyerRegister")
	public String lawyerRegister() {

		return "LawyerRegistration";
	}

	@RequestMapping("registerClient")
	public String registerClient(@RequestParam(value = "name") String name, @RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password, @RequestParam(value = "cpassword") String cpassword,
			@RequestParam(value = "phone") String phone, HttpSession session) {
		if (password.equals(cpassword)) {
			Client cl = new Client(name, email, password, phone);
			Client saveClient = clservice.saveClient(cl);
			if (saveClient != null) {
				session.setAttribute("client", saveClient);
			} else {
				return "redirect:/user/clientRegister";
			}
		}
		return "Login";
	}

	@RequestMapping("registerLawyer")
	public String registerLawyer(@RequestParam(value = "name") String name,
			@RequestParam(value = "specialization") String specialization, @RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password, @RequestParam(value = "cpassword") String cpassword,
			@RequestParam(value = "phone") String phone, HttpSession session) {
		if (password.equals(cpassword)) {
			Lawyer l = new Lawyer(name, specialization, email, password, phone);
			Lawyer saveLawyer = lservice.saveLawyer(l);
			if (saveLawyer != null) {
				session.setAttribute("lawyer", saveLawyer);
			} else {
				return "redirect:/user/lawyerRegister";
			}
		}
		return "Login";
	}
	
	@RequestMapping("profile")
	public String profile() {

		return "profile";
	}

}
