package slambook.com.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


import slambook.com.model.User;

public class RegistrationFormValidator implements Validator{

	public boolean supports(Class<?> arg0) {
		
		return arg0.isAssignableFrom(User.class);
	}

	public void validate(Object arg0, Errors error) {
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "firstName", "firstName.empty");
			ValidationUtils.rejectIfEmptyOrWhitespace(error, "lastName", "lastName.empty");
			ValidationUtils.rejectIfEmptyOrWhitespace(error, "email", "email.empty");
			ValidationUtils.rejectIfEmptyOrWhitespace(error, "mobile", "mobile.empty");
			ValidationUtils.rejectIfEmptyOrWhitespace(error, "password", "password.empty");
		
		
	}

}
