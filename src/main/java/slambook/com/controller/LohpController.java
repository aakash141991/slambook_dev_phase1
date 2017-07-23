package slambook.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import slambook.com.model.LoginForm;
import slambook.com.model.User;

@Controller
public class LohpController {
	
	@RequestMapping("/index.html")
	public String getLoggedOutHomePage(Model model){
		model.addAttribute("loginForm",new LoginForm());
		model.addAttribute("userForm",new User());
		return "lohp";
	}

}
