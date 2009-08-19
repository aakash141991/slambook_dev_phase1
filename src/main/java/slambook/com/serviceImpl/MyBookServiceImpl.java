package slambook.com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import slambook.com.dao.MyBookDao;
import slambook.com.model.Slambook;
import slambook.com.model.Template;
import slambook.com.service.MyBookService;

@Service
public class MyBookServiceImpl implements MyBookService{
	
	@Autowired
	MyBookDao myBookDao;

	public MyBookDao getMyBookDao() {
		return myBookDao;
	}

	public void setMyBookDao(MyBookDao myBookDao) {
		this.myBookDao = myBookDao;
	}

	@Override
	public List<Template> getAllTemplates() {
		List<Template> myTemplates = getMyBookDao().getAllTemplates();
		return myTemplates;
	}

	@Override
	public boolean saveSlambook(String slambookName, long templateId,String templateImage, long userId) {
		boolean result=getMyBookDao().saveSlambook(slambookName,templateId,templateImage,userId);
		return false;
	}

	@Override
	public List<Slambook> getBooks(long userId) {
		List<Slambook> slambooks = getMyBookDao().getAllBooks(userId);
		return slambooks;
	}
	
	

}
