package com.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class MainController {
    
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
}
