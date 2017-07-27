package slambook.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.json.simple.JSONObject;

@Entity
public class Page {

	@GeneratedValue
	@Id
	private long pageId;
	
	private int pageNo;
	
	private JSONObject pageData = new JSONObject();

	public long getPageId() {
		return pageId;
	}

	public void setPageId(long pageId) {
		this.pageId = pageId;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public JSONObject getPageData() {
		return pageData;
	}

	public void setPageData(JSONObject pageData) {
		this.pageData = pageData;
	}
	
	

	
	
	
	
}
