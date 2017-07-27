package slambook.com.daoImpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import slambook.com.controller.HomeController;
import slambook.com.dao.HomePageDao;
import slambook.com.model.FriendList;
import slambook.com.model.User;

@Repository
public class HomePageDaoImpl implements HomePageDao{

	static Logger logger = Logger.getLogger(HomeController.class);

	@Autowired
	private HibernateTemplate hibernateTemplate;


		
		public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}



	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	@Transactional
	public User getUserByEmail(String email) {
		User user =new User();
		String query="from User u where u.email=?";
		List<Object> users=getHibernateTemplate().find(query,email);
		if(users.size()>0){
			
				user= (User) users.get(0);
			
		}
		return user;
	}



	@Transactional
	public void addFriend(User currentUser, String friend) {
		FriendList friends= new FriendList();
		friends.setUser_email(currentUser.getEmail());
		friends.setFriend_email(friend);
	 
		//friends.setFriendshipDate(new Date());
		getHibernateTemplate().saveOrUpdate(friends);
		
	}



	@Cacheable(value="friends")
	public List<User> loadFriends(User u) {
		logger.debug("value cached this function wont be called again");
		String query="from FriendList f where f.user_email=?";
		List<Object> friendList=getHibernateTemplate().find(query,u.getEmail());
		List<User> myFriends= new ArrayList<User>();
		for(Object friends : friendList){
			myFriends.add(getUserByEmail(((FriendList) friends).getFriend_email()));
		}
		return myFriends;
		
	}

}
