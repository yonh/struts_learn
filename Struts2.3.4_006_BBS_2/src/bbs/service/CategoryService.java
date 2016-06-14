package bbs.service;

import java.util.List;

import bbs.dao.CategoryDao;
import bbs.model.Category;

public class CategoryService {
	private CategoryDao dao = new CategoryDao();
	private static CategoryService service = new CategoryService();
	private CategoryService() {	}
	
	public static CategoryService getInstance() {
		return service;
	}
	
	public void add(Category category) {
		dao.add(category);
	}
	public void delete(Category category) {
		dao.deleteById(category.getId());
	}
	public void deleteById(int id) {
		dao.deleteById(id);
	}
	public List<Category> list() {
		return dao.list();
	}
	
	public void update(Category category) {
		dao.update(category);
	}
	
	public Category loadById(int id) {
		return dao.loadById(id);
	}
}
