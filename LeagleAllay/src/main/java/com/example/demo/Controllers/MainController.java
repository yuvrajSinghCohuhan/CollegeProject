package com.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class MainController {
	
	@RequestMapping("home")
	public String Home() {
		return "index";
	}

}
