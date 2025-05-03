package com.example.demo.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Entities.Admin;
import com.example.demo.Entities.Client;
import com.example.demo.Entities.Lawyer;
import com.example.demo.Service.AdminService;
import com.example.demo.Service.ClientService;
import com.example.demo.Service.LawyerService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private ClientService clientService;
	@Autowired
	private LawyerService lawyerService;
	
	@GetMapping("login")
	public String login() {
		
		return "AdminLogin";
	}
	@GetMapping("404page")
	public String ErrorPage() {
		
		return "404Page";
	}
	@GetMapping("dashboard")
	public String dashboard() {
		
		return "AdminDashboard";
	}
	@GetMapping("viewClients")
	public String viewClients(HttpSession session) {
		List<Client>ls = clientService.getAllClient();
//		ModelMap mm = new ModelMap("clients",ls);
		session.setAttribute("clients", ls);
		return "ShowClients";
	}
	@GetMapping("viewLawyers")
	public String viewLawyers(HttpSession session) {
		List<Lawyer>ls = lawyerService.findAllLawyer();
		session.setAttribute("lawyers", ls);
		return "ShowLawyers";
	}
	
	@PostMapping("loginTask")
	public String loginTask(@ModelAttribute Admin a,HttpSession session) {
		if(a!=null) {
		Admin admin = adminService.getAdmin(a);
		if(admin!=null) {
			session.setAttribute("adminMail", a.getEmail());
			return "AdminDashboard";
		}
		}
		return "AdminLogin";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.setAttribute("email", null);
		session.setAttribute("clients", null);
		session.setAttribute("lawyers", null);
		session.invalidate();
		return "AdminLogin";
	}

}
