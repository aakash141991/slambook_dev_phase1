package slambook.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import slambook.com.model.User;
import slambook.com.service.HomePageService;
import slambook.com.util.LoginUtil;



@Controller

public class HomeController {
@Autowired
private HomePageService homePageService;

	@RequestMapping("/home")
	public String loadHomePage(Model model,HttpSession httpSession){
		
		User user = (User) httpSession.getAttribute("user");
		
		if((user != null)&& (LoginUtil.getLogginStatus(httpSession)).equalsIgnoreCase("true") ){
			model.addAttribute("user", user);
			homePageService.loadFriends(user,httpSession);
			
			return "home";
		}else{
			return "redirect:index.html";
		}
		
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/logout")
	public String logOut(Model model,HttpSession httpSession){
		httpSession.invalidate();
		return "redirect:/index.html";
		
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/add.html")
	public @ResponseBody String add(HttpSession httpSession){
		String friend= "mani.maya@gmail.com";
		User user = (User) httpSession.getAttribute("user");
		homePageService.addFriend(user,friend,httpSession);
		return "Success";
		
	}
}
