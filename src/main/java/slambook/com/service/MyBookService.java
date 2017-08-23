package slambook.com.service;

import java.util.List;

import slambook.com.model.Template;

public interface MyBookService {

	List<Template> getAllTemplates();

	boolean saveSlambook(String slambookName, long templateId, long userId);

}
