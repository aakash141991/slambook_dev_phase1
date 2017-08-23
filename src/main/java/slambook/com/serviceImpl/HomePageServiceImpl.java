package slambook.com.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import slambook.com.dao.HomePageDao;
import slambook.com.model.Slambook;
import slambook.com.model.User;
import slambook.com.service.HomePageService;

@Service
public class HomePageServiceImpl implements HomePageService{

	static Logger logger = Logger.getLogger(HomePageServiceImpl.class);
	@Autowired
	private HomePageDao homePageDao;
	
	

	
	public HomePageDao getHomePageDao() {
		return homePageDao;
	}


	public void setHomePageDao(HomePageDao homePageDao) {
		this.homePageDao = homePageDao;
	}


	public User getUserByEmail(String email) {
		return homePageDao.getUserByEmail(email);
	}

	
	public void addFriend(User u, String friend,HttpSession session) {
		boolean result=checkDuplicate(u,friend,session);
		if(!result){
			getHomePageDao().addFriend(u,friend);
		}
		
		
	}

	private boolean checkDuplicate(User u, String friend,HttpSession session) {
		boolean result=false;
		List<User> friendList = new ArrayList<User>();
		friendList = (List<User>) session.getAttribute("friends");
		if(friendList!= null ){
			for (User fuser : friendList){
				if(fuser.getEmail().equalsIgnoreCase(friend)){
					result=true;
					break;
				}
			}
		}
		
		return result;
	}


	/*@Async
	public void loadFriends(User user, HttpSession httpSession) {
		logger.debug("loading freinds started");
		List<User> friends= homePageDao.loadFriends(user);
		httpSession.setAttribute("friends",friends);
		logger.debug("loading freinds stop");
	}*/


	@Override
	public Slambook getSlambook(long userId, String slambookName) {
		Slambook slambook = getHomePageDao().getSlambook(userId,slambookName);
		return slambook;
	}


	@Override
	public List<User> getConnections(String email) {
		List<User> friends= getHomePageDao().getConnections(email);
		return friends;
	}


}
