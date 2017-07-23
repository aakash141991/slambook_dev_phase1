package slambook.com.daoImpl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import slambook.com.dao.RegistrationDao;
import slambook.com.model.FriendList;
import slambook.com.model.User;

@Repository
public class RegistrationDaoImpl  implements RegistrationDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public boolean registerNewUser(User user) {
	
		hibernateTemplate.saveOrUpdate(user);
		return false;
	}

}
