package slambook.com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class FirstPage {
	
	@GeneratedValue
	@Id
	private long pageId;
	
	private String nickName;
	
	private String favoriteColor;
	
	private String welcomeWords;

	public long getPageId() {
		return pageId;
	}

	public void setPageId(long pageId) {
		this.pageId = pageId;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getFavoriteColor() {
		return favoriteColor;
	}

	public void setFavoriteColor(String favoriteColor) {
		this.favoriteColor = favoriteColor;
	}

	public String getWelcomeWords() {
		return welcomeWords;
	}

	public void setWelcomeWords(String welcomeWords) {
		this.welcomeWords = welcomeWords;
	}
	
	
}
