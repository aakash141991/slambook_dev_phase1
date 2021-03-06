package slambook.com.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import slambook.com.dao.MyBookDao;
import slambook.com.model.FirstPage;
import slambook.com.model.FriendList;
import slambook.com.model.Page;
import slambook.com.model.Slambook;
import slambook.com.model.Template;
import slambook.com.model.User;

@Repository
public class MyBookDaoImpl implements MyBookDao{

	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}


	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}



	@Override
	public List<Template> getAllTemplates() {
		List<Template> templates= new ArrayList<Template>();
		
		String query="from Template t ";
		List<Object> templateObjList= getHibernateTemplate().find(query);
		for(Object obj:templateObjList){
			Template myTemplate=(Template) obj;
			templates.add(myTemplate);
		}
		
		return templates;
		
	}


	@Override
	public boolean saveSlambook(String slambookName, long templateId,String templateImage, long userId) {
		Slambook slambook = new Slambook();
		slambook.setBelongsToUserId(userId);
		slambook.setSlambookName(slambookName);
		slambook.setTemplateId(templateId);
		slambook.setTemplateImageUrl(templateImage);
		FirstPage firstPage= new FirstPage();
		slambook.setFirstPage(firstPage);
		getHibernateTemplate().save(slambook);
		
		List<Page> pages = new ArrayList<Page>();
		Page page = new Page();
		page.setPageNo(1);
		pages.add(page);
		slambook.setSlambookPages(pages);
		return true;
	}


	@Override
	public List<Slambook> getAllBooks(long userId) {
		List<Slambook> slambooks = new ArrayList<Slambook>();
		String query="from Slambook s where s.belongsToUserId=?";
		List<Object> books = getHibernateTemplate().find(query,userId);
		for(Object obj:books){
			Slambook slambook=(Slambook) obj;
			slambooks.add(slambook);
		}
		return slambooks;
	}

}
