package slambook.com.daoImpl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import slambook.com.dao.LoginDao;
import slambook.com.model.LoginForm;
import slambook.com.model.User;

@Repository
public class LoginDaoImpl implements LoginDao {
@Autowired
private HibernateTemplate hibernateTemplate;


	
	public HibernateTemplate getHibernateTemplate() {
	return hibernateTemplate;
}



public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
	this.hibernateTemplate = hibernateTemplate;
}



	@Transactional
	public User getLoggedIn(LoginForm loginForm) {
		String email=loginForm.getEmail();
		String password = loginForm.getPassword();
		User user =new User();
		String query="from User u where u.email=?";
		List<User> users=getHibernateTemplate().find(query,email);
		if(users.size()>0){
			if(users.get(0).getPassword().equals(password)){
				user= users.get(0);
			}
			
		}
		return user;
	}

	
}
