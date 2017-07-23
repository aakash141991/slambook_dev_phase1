package slambook.com.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import slambook.com.model.User;
import slambook.com.service.RegistrationService;
import slambook.com.validator.RegistrationFormValidator;

@Controller
public class RegController {

	@Autowired
	private RegistrationService regService;
	
	@RequestMapping(method=RequestMethod.POST,value="/registrationSubmit.html")
	public String registration(@ModelAttribute("userForm") User userForm,BindingResult bindingResult,Model model,HttpSession httpSession){
		
		RegistrationFormValidator validator = new RegistrationFormValidator();
		if(validator.supports(User.class)){
				validator.validate(userForm, bindingResult);
			
			if(bindingResult.hasErrors()){
				System.out.println("!!!!!!!!!!Error coming registration");
				//model.addAttribute("errors", );
				return "redirect:index.html";
			}else{
				boolean result = regService.registerNewUser(userForm);
				httpSession.setAttribute("loggedIn", "true");
				httpSession.setAttribute("user", userForm);
				
				return "redirect:home" ;
			}
		}else{
			return "redirect:index.html";

		}
		
		
	}
}
