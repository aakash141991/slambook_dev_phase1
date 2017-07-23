package slambook.com.dao;

import slambook.com.model.LoginForm;
import slambook.com.model.User;

public interface LoginDao {

	User getLoggedIn(LoginForm loginForm);

}
