package slambook.com.service;

import slambook.com.model.LoginForm;
import slambook.com.model.User;

public interface LoginService {

	public User getLoggedIn(LoginForm loginForm);
}
