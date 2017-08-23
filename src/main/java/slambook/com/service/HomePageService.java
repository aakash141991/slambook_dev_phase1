package slambook.com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import slambook.com.model.Slambook;
import slambook.com.model.User;

public interface HomePageService {

	public void addFriend(User u, String friend, HttpSession httpSession);

	public User getUserByEmail(String string);

	/*public void loadFriends(User user, HttpSession httpSession);*/

	public Slambook getSlambook(long userId, String slambookName);

	public List<User> getConnections(String email);

}
