package slambook.com.dao;

import java.util.List;

import slambook.com.model.Slambook;
import slambook.com.model.User;

public interface HomePageDao {

	public User getUserByEmail(String email);

	public void addFriend(User u, String friend);

	/*public List<User> loadFriends(User u);
*/
	public Slambook getSlambook(long userId, String slambookName);

	public List<User> getConnections(String email);

}
