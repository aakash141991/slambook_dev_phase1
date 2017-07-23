package slambook.com.serviceImpl;

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
	

	
	public User getUserByEmail(String email) {
		return homePageDao.getUserByEmail(email);
	}

	
	public void addFriend(User u, User friend) {
		homePageDao.addFriend(u,friend);
		
	}

	@Async
	public void loadFriends(User user, HttpSession httpSession) {
		System.out.println("load Friends Start");
		List<User> friends= homePageDao.loadFriends(user);
		httpSession.setAttribute("friends",friends);
		System.out.println("load Friends Finish");
	}


}
