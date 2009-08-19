package slambook.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import slambook.com.model.Slambook;
import slambook.com.model.User;
import slambook.com.service.HomePageService;
import slambook.com.util.LoginUtil;



@Controller

public class HomeController {
@Autowired
private HomePageService homePageService;



 public HomePageService getHomePageService() {
	return homePageService;
}

public void setHomePageService(HomePageService homePageService) {
	this.homePageService = homePageService;
}

static Logger logger = Logger.getLogger(HomeController.class);

	@RequestMapping("/home")
	public String loadHomePage(Model model,HttpSession httpSession){
		DOMConfigurator.configure("classes/log4j.xml");
		logger.debug("started :::::::::::::::::::");
		User user = (User) httpSession.getAttribute("user");
		
		if((user != null)&& (LoginUtil.getLogginStatus(httpSession)).equalsIgnoreCase("true") ){
			model.addAttribute("user", user);
			
			
			return "home";
		}else{
			return "redirect:index.html";
		}
		
	}
	@RequestMapping("/getConnectionsPage.html")
	public String getConnectionsPage(Model model,HttpSession httpSession){
		User user = (User) httpSession.getAttribute("user");
		
		if((user != null)&& (LoginUtil.getLogginStatus(httpSession)).equalsIgnoreCase("true") ){
			model.addAttribute("user", user);
			List <User> friends= homePageService.getConnections(user.getEmail());
			model.addAttribute("friends",friends);
			return "connections";
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
	
	@RequestMapping(method=RequestMethod.GET,value="/getSlambook.html")
	public String getSlambook(@RequestParam("slambookName") String slambookName,HttpSession httpSession){
		User user = (User) httpSession.getAttribute("user");
		Slambook slambook=homePageService.getSlambook(user.getUserId(),slambookName);
		return "myBook";
		
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/getConnections.html")
	public @ResponseBody List<User> getConnections(HttpSession httpSession){
		User user = (User) httpSession.getAttribute("user");
		String email=user.getEmail();
		List<User> friends= getHomePageService().getConnections(email);
		
		return friends;
		
	}
}
