package slambook.com.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import slambook.com.dao.HomePageDao;
import slambook.com.model.User;
import slambook.com.service.HomePageService;

@Service
public class HomePageServiceImpl implements HomePageService{

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


	@Async
	public void loadFriends(User user, HttpSession httpSession) {
		System.out.println("load Friends Start");
		List<User> friends= homePageDao.loadFriends(user);
		httpSession.setAttribute("friends",friends);
		System.out.println("load Friends Finish");
	}


}
