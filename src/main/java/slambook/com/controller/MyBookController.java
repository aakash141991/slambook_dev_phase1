package slambook.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import slambook.com.model.LoginForm;
import slambook.com.model.Template;
import slambook.com.model.User;
import slambook.com.service.MyBookService;
import slambook.com.util.LoginUtil;

@Controller
public class MyBookController {

	@Autowired
	MyBookService myBookService;
	
	public MyBookService getMyBookService() {
		return myBookService;
	}

	public void setMyBookService(MyBookService myBookService) {
		this.myBookService = myBookService;
	}

	@RequestMapping("/myBook.html")
	public String getLoggedOutHomePage(Model model,HttpSession httpSession){
		User user = (User) httpSession.getAttribute("user");
		
		if((user != null)&& (LoginUtil.getLogginStatus(httpSession)).equalsIgnoreCase("true") ){
			model.addAttribute("user", user);
			
			return "myBook";
		}else{
			return "redirect:index.html";
		}
		
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/getTemplates.html")
	@ResponseBody
	public List<Template> getAllTemplates(Model model,HttpSession httpSession){
		
		List<Template> myTemplates = getMyBookService().getAllTemplates();
		return myTemplates;
		
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/saveSlambook.html")
	@ResponseBody
	public boolean saveSlambook(@RequestParam("slambookName") String slambookName,@RequestParam("templateId") long templateId,HttpSession httpSession){
		User user = (User) httpSession.getAttribute("user");
		long userId= user.getUserId();
		boolean result=getMyBookService().saveSlambook(slambookName,templateId,userId);
		 
		return result;
		
	}
}
