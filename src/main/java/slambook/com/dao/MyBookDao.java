package slambook.com.dao;

import java.util.List;

import slambook.com.model.Slambook;
import slambook.com.model.Template;

public interface MyBookDao {

	List<Template> getAllTemplates();

	boolean saveSlambook(String slambookName, long templateId, String templateImage, long userId);

	List<Slambook> getAllBooks(long userId);

}
