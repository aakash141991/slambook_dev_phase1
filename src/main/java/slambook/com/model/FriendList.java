package slambook.com.model;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class FriendList {

	@GeneratedValue
	@Id
	private long id;
	
	private String user_email;
	
	private String friend_email;
	
	private Date friendshipDate;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getFriend_email() {
		return friend_email;
	}

	public void setFriend_email(String friend_email) {
		this.friend_email = friend_email;
	}

	public Date getFriendshipDate() {
		return friendshipDate;
	}

	public void setFriendshipDate(Date friendshipDate) {
		this.friendshipDate = friendshipDate;
	}
	
	
	
}
