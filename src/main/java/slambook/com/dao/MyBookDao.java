package slambook.com.dao;

import java.util.List;

import slambook.com.model.Template;

public interface MyBookDao {

	List<Template> getAllTemplates();

	boolean saveSlambook(String slambookName, long templateId, long userId);

}
