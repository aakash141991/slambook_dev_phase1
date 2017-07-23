package slambook.com.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import slambook.com.model.LoginForm;


public class LoginValidator implements Validator {

	public boolean supports(Class<?> arg0) {
		
		return arg0.isAssignableFrom(LoginForm.class);
	}

	public void validate(Object arg0, Errors error) {
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "email", "email.empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "password", "password.empty");
		
	}

}
