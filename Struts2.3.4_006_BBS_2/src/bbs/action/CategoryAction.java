package bbs.action;

import java.util.List;
import bbs.model.Category;
import bbs.service.CategoryService;

import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport {
	private List<Category> categories;
	private CategoryService categoryService = CategoryService.getInstance();
	private Category category;
	private int id;
	
	public String list() {
		categories = categoryService.list();
		return SUCCESS;
	}
	public String add() {
		categoryService.add(category);
		return SUCCESS;
	}
	public String update() {
		categoryService.update(category);
		return SUCCESS;
	}
	public String delete() {
		categoryService.deleteById(id);
		return SUCCESS;
	}
	
	public String addInput() {
		return INPUT;
	}
	public String updateInput() {
		this.category = categoryService.loadById(id);
		return INPUT;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
