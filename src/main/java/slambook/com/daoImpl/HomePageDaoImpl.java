package slambook.com.daoImpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import slambook.com.dao.HomePageDao;
import slambook.com.model.FriendList;
import slambook.com.model.User;

@Repository
public class HomePageDaoImpl implements HomePageDao{

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
		List<User> users=getHibernateTemplate().find(query,email);
		if(users.size()>0){
			
				user= users.get(0);
			
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



	public List<User> loadFriends(User u) {
		String query="from FriendList f where f.user_email=?";
		List<FriendList> friendList=getHibernateTemplate().find(query,u.getEmail());
		List<User> myFriends= new ArrayList<User>();
		for(FriendList friends : friendList){
			myFriends.add(getUserByEmail(friends.getFriend_email()));
		}
		return myFriends;
		
	}

}
