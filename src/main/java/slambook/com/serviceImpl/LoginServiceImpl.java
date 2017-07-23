package slambook.com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import slambook.com.dao.LoginDao;
import slambook.com.model.LoginForm;
import slambook.com.model.User;
import slambook.com.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	
	public LoginDao getLoginDao() {
		return loginDao;
	}


	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}


	public User getLoggedIn(LoginForm loginForm) {
		User user=loginDao.getLoggedIn(loginForm);
		return user;
	}

}
