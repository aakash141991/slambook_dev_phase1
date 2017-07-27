package slambook.com.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "SLAMBOOK")
public class Slambook {
 

	@GeneratedValue
	@Id
	@Column(name = "SLAMBOOK_ID")
	private long slamId;
	
	private long belongsToUserId;
	
	private String slambookName;
	
	private long templateId;
	
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "pageId",fetch = FetchType.EAGER)
	@Column(name = "PAGE_ID")
	private List<Page> slambookPages = new ArrayList<Page>();

	public long getSlamId() {
		return slamId;
	}

	public void setSlamId(long slamId) {
		this.slamId = slamId;
	}

	public String getSlambookName() {
		return slambookName;
	}

	public void setSlambookName(String slambookName) {
		this.slambookName = slambookName;
	}

	public long getTemplateId() {
		return templateId;
	}

	public void setTemplateId(long templateId) {
		this.templateId = templateId;
	}


	public List<Page> getSlambookPages() {
		return slambookPages;
	}

	public void setSlambookPages(List<Page> slambookPages) {
		this.slambookPages = slambookPages;
	}


	public long getBelongsToUserId() {
		return belongsToUserId;
	}

	public void setBelongsToUserId(long belongsToUserId) {
		this.belongsToUserId = belongsToUserId;
	}
	
	
}
