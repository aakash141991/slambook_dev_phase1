package slambook.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import slambook.com.model.LoginForm;
import slambook.com.model.User;
import slambook.com.service.LoginService;
import slambook.com.validator.LoginValidator;


@Controller
public class LoginController {

	
	@Autowired
	private LoginService loginService;
	

	@Autowired
	private HomeController homeController;
	
	
	
	public HomeController getHomeController() {
		return homeController;
	}


	public void setHomeController(HomeController homeController) {
		this.homeController = homeController;
	}


	public LoginService getLoginService() {
		return loginService;
	}


	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}


	@RequestMapping(method=RequestMethod.POST,value="/loginSubmit.html")
	public String showHome(@ModelAttribute("loginForm") LoginForm loginForm,BindingResult bindingResult2,Model model,HttpSession httpSession){
		
	LoginValidator loginValidator=new LoginValidator();
	httpSession.setAttribute("loggedIn", "false");
		if(loginValidator.supports(LoginForm.class)){
			loginValidator.validate(loginForm, bindingResult2);
			
			if(bindingResult2.hasErrors()){
				System.out.println("!!!!!!!!!!Error coming in binding");
				return "redirect:index.html";
			}else{
				
				User user= loginService.getLoggedIn(loginForm);
				if(user.getEmail()!= null){
					System.out.println("Hello"+user.getFirstName() + " " + user.getUserId());
					
					httpSession.setAttribute("loggedIn", "true");
					httpSession.setAttribute("user", user);
					
					return "redirect:home" ;
				}
				else{
					return "redirect:index.html";
				}
			}
		}else{
			return "redirect:index.html";
		}
	/*	
		String res=loginService.getLoggedIn(loginForm);
		if(res.equals("-1")){
			httpSession.setAttribute("resp","No such user");
			return "redirect:index.html";
		}else{
			httpSession.setAttribute("resp","Login Successfull");
			return "home";
		}*/
		
	}

}

