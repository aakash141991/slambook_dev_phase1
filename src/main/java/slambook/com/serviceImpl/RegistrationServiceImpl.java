package slambook.com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import slambook.com.dao.RegistrationDao;
import slambook.com.model.User;
import slambook.com.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService{

	@Autowired
	private RegistrationDao registrationDao;
	
	public boolean registerNewUser(User user) {
		registrationDao.registerNewUser(user);
		return false;
	}

}
